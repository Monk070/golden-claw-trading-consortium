-- ============================================================
-- Migration: Add store_items table for toggling items in the store
-- Run this in the Supabase SQL Editor
-- ============================================================

CREATE TABLE IF NOT EXISTS public.store_items (
  item_key text PRIMARY KEY
);

ALTER TABLE public.store_items ENABLE ROW LEVEL SECURITY;

-- Everyone can see which items are in the store
CREATE POLICY "Store items are viewable by everyone"
  ON public.store_items FOR SELECT USING (true);

-- Admin/QM can toggle items
CREATE POLICY "Admin/QM can manage store items"
  ON public.store_items FOR ALL USING (public.get_my_role() IN ('admin','quartermaster'));
