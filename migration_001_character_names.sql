-- ============================================================
-- Migration: Add character_name to profiles, discord_name + profile_id to members
-- Run this in the Supabase SQL Editor
-- ============================================================

-- Add character_name column to profiles
ALTER TABLE public.profiles ADD COLUMN IF NOT EXISTS character_name text;

-- Add discord_name and profile_id columns to members
ALTER TABLE public.members ADD COLUMN IF NOT EXISTS discord_name text;
ALTER TABLE public.members ADD COLUMN IF NOT EXISTS profile_id uuid REFERENCES public.profiles(id);

-- Allow authenticated users to insert their own member entry (for first-time setup)
CREATE POLICY "Authenticated users can insert own member"
  ON public.members FOR INSERT
  WITH CHECK (auth.uid() IS NOT NULL);

-- Allow users to update their own profile's character_name
-- (the existing "Users can update own profile" policy should cover this,
--  but if it doesn't exist yet, create it)
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'profiles' AND policyname = 'Users can update own profile display_name'
  ) THEN
    CREATE POLICY "Users can update own profile"
      ON public.profiles FOR UPDATE
      USING (id = auth.uid())
      WITH CHECK (id = auth.uid());
  END IF;
END $$;
