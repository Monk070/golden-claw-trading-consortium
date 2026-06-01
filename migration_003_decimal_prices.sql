-- Migration 003: Allow decimal prices (e.g. 2.5 gold)
-- Run this in the Supabase SQL Editor.

ALTER TABLE public.custom_prices
  ALTER COLUMN custom_price TYPE numeric(10,2);
