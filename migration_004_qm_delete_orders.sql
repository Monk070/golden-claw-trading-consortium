-- Migration 004: Allow quartermasters to delete orders (not just admin)
-- Run this in the Supabase SQL Editor.

DROP POLICY IF EXISTS "Admin can delete orders" ON public.orders;

CREATE POLICY "Admin/QM can delete orders"
  ON public.orders FOR DELETE
  USING (public.get_my_role() IN ('admin','quartermaster'));
