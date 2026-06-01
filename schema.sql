-- ============================================================
-- Golden Claw Trading Consortium — Supabase Schema
-- ============================================================
-- Run this in the Supabase SQL Editor after creating your project.
-- Make sure you have enabled Discord OAuth in Authentication → Providers.
-- Set your Site URL and Redirect URL to your GitHub Pages URL.
-- ============================================================

-- 1. PROFILES (linked to Supabase auth.users)
create table public.profiles (
  id uuid references auth.users on delete cascade primary key,
  discord_id text,
  display_name text,
  avatar_url text,
  role text not null default 'viewer'
    check (role in ('admin','quartermaster','blacksmith','member','viewer')),
  created_at timestamptz default now()
);

-- Auto-create a profile row when a new user signs up
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, discord_id, display_name, avatar_url)
  values (
    new.id,
    new.raw_user_meta_data ->> 'provider_id',
    coalesce(
      new.raw_user_meta_data ->> 'full_name',
      new.raw_user_meta_data ->> 'name',
      new.raw_user_meta_data ->> 'user_name',
      'Adventurer'
    ),
    new.raw_user_meta_data ->> 'avatar_url'
  );
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- 2. CUSTOM PRICES (overrides default item prices)
create table public.custom_prices (
  id uuid default gen_random_uuid() primary key,
  item_key text unique not null,
  custom_price numeric(10,2) not null,
  updated_by uuid references public.profiles(id),
  updated_at timestamptz default now()
);

-- 3. RECIPES
create table public.recipes (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  description text,
  result_item_key text,
  result_quantity integer default 1,
  crafting_fee integer default 0,
  created_by uuid references public.profiles(id),
  created_at timestamptz default now()
);

create table public.recipe_materials (
  id uuid default gen_random_uuid() primary key,
  recipe_id uuid references public.recipes(id) on delete cascade,
  item_key text not null,
  quantity integer not null default 1
);

-- 4. ORDERS
create table public.orders (
  id uuid default gen_random_uuid() primary key,
  customer_id uuid references public.profiles(id),
  customer_name text not null,
  status text not null default 'pending'
    check (status in ('pending','in_progress','complete','picked_up','cancelled')),
  notes text,
  assigned_to uuid references public.profiles(id),
  total_price integer default 0,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table public.order_items (
  id uuid default gen_random_uuid() primary key,
  order_id uuid references public.orders(id) on delete cascade,
  item_key text not null,
  item_name text not null,
  quantity integer not null default 1,
  unit_price integer not null
);

-- 5. INVENTORY (raw materials stock)
create table public.inventory (
  id uuid default gen_random_uuid() primary key,
  item_key text unique not null,
  item_name text not null,
  category text not null,
  quantity integer not null default 0,
  updated_by uuid references public.profiles(id),
  updated_at timestamptz default now()
);

-- 6. MEMBERS (clan roster)
create table public.members (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  profession text,
  rank text,
  joined_date date default current_date,
  notes text,
  created_at timestamptz default now()
);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table public.profiles enable row level security;
alter table public.custom_prices enable row level security;
alter table public.recipes enable row level security;
alter table public.recipe_materials enable row level security;
alter table public.orders enable row level security;
alter table public.order_items enable row level security;
alter table public.inventory enable row level security;
alter table public.members enable row level security;

-- Helper: get current user's role
create or replace function public.get_my_role()
returns text as $$
  select role from public.profiles where id = auth.uid();
$$ language sql security definer stable;

-- PROFILES
create policy "Profiles are viewable by everyone"
  on public.profiles for select using (true);
create policy "Users can update own profile display_name"
  on public.profiles for update using (id = auth.uid())
  with check (id = auth.uid());
create policy "Admins can update any profile"
  on public.profiles for update using (public.get_my_role() = 'admin');

-- CUSTOM PRICES
create policy "Prices are viewable by everyone"
  on public.custom_prices for select using (true);
create policy "Admin/QM can manage prices"
  on public.custom_prices for all using (public.get_my_role() in ('admin','quartermaster'));

-- RECIPES
create policy "Recipes are viewable by everyone"
  on public.recipes for select using (true);
create policy "Admin/QM can manage recipes"
  on public.recipes for all using (public.get_my_role() in ('admin','quartermaster'));

-- RECIPE MATERIALS
create policy "Recipe materials are viewable by everyone"
  on public.recipe_materials for select using (true);
create policy "Admin/QM can manage recipe materials"
  on public.recipe_materials for all using (public.get_my_role() in ('admin','quartermaster'));

-- ORDERS
create policy "Authenticated users can view own orders"
  on public.orders for select using (
    customer_id = auth.uid()
    or public.get_my_role() in ('admin','quartermaster','blacksmith')
  );
create policy "Authenticated users can create orders"
  on public.orders for insert with check (auth.uid() is not null);
create policy "Staff can update orders"
  on public.orders for update using (
    public.get_my_role() in ('admin','quartermaster','blacksmith')
  );
create policy "Admin can delete orders"
  on public.orders for delete using (public.get_my_role() = 'admin');

-- ORDER ITEMS
create policy "Order items viewable with order access"
  on public.order_items for select using (true);
create policy "Authenticated users can insert order items"
  on public.order_items for insert with check (auth.uid() is not null);

-- INVENTORY
create policy "Inventory is viewable by authenticated users"
  on public.inventory for select using (auth.uid() is not null);
create policy "Admin/QM can manage inventory"
  on public.inventory for all using (public.get_my_role() in ('admin','quartermaster'));

-- MEMBERS
create policy "Members are viewable by everyone"
  on public.members for select using (true);
create policy "Admin can manage members"
  on public.members for all using (public.get_my_role() = 'admin');
