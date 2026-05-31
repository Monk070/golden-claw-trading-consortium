-- ============================================================
-- Golden Claw Trading Consortium — Vanilla Skyrim Armor Recipes
-- Run this in the Supabase SQL Editor AFTER schema.sql
-- ============================================================

DO $$
DECLARE r uuid;
BEGIN

  -- ═══════════════════════════════════════════
  -- HIDE ARMOR (Light — No Perk Required)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Hide Helmet', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 2), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Hide Armor', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 4), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Hide Bracers', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Hide Boots', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 2), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- LEATHER ARMOR (Light — No Perk Required)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Leather Helmet', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Leather Armor', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 4), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Leather Bracers', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 2), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Leather Boots', 'Light Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'leather', 2), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- IRON ARMOR (Heavy — No Perk Required)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Iron Helmet', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 4), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Iron Armor', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 5), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Iron Gauntlets', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 2), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Iron Boots', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 4), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Iron Shield', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 4), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Banded Iron Shield', 'Heavy Armor — No smithing perk required', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'iron_ingot', 4), (r, 'corundum_ingot', 1), (r, 'leather_strips', 2);

  -- ═══════════════════════════════════════════
  -- STEEL ARMOR (Heavy — Steel Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Helmet', 'Heavy Armor — Requires Steel Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'steel_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Armor', 'Heavy Armor — Requires Steel Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'steel_ingot', 3), (r, 'iron_ingot', 2), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Gauntlets', 'Heavy Armor — Requires Steel Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'steel_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Boots', 'Heavy Armor — Requires Steel Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'steel_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Shield', 'Heavy Armor — Requires Steel Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'steel_ingot', 3), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- STEEL PLATE ARMOR (Heavy — Advanced Armors Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Plate Helmet', 'Heavy Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Plate Armor', 'Heavy Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 3), (r, 'steel_ingot', 1), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Plate Gauntlets', 'Heavy Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Steel Plate Boots', 'Heavy Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 2);

  -- ═══════════════════════════════════════════
  -- ELVEN ARMOR (Light — Elven Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Helmet', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Armor', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 4), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Gauntlets', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 1), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Boots', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 1), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Shield', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Elven Gilded Armor', 'Light Armor — Requires Elven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'moonstone_ingot', 4), (r, 'quicksilver_ingot', 1), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- SCALED ARMOR (Light — Advanced Armors Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Scaled Helmet', 'Light Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Scaled Armor', 'Light Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 3), (r, 'steel_ingot', 1), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Scaled Gauntlets', 'Light Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Scaled Boots', 'Light Armor — Requires Advanced Armors perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'corundum_ingot', 2), (r, 'steel_ingot', 1), (r, 'leather_strips', 2);

  -- ═══════════════════════════════════════════
  -- DWARVEN ARMOR (Heavy — Dwarven Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dwarven Helmet', 'Heavy Armor — Requires Dwarven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dwarven_ingot', 2), (r, 'iron_ingot', 1), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dwarven Armor', 'Heavy Armor — Requires Dwarven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dwarven_ingot', 3), (r, 'iron_ingot', 1), (r, 'steel_ingot', 2), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dwarven Gauntlets', 'Heavy Armor — Requires Dwarven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dwarven_ingot', 1), (r, 'iron_ingot', 1), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dwarven Boots', 'Heavy Armor — Requires Dwarven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dwarven_ingot', 2), (r, 'iron_ingot', 1), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dwarven Shield', 'Heavy Armor — Requires Dwarven Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dwarven_ingot', 2), (r, 'iron_ingot', 1), (r, 'steel_ingot', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- ORCISH ARMOR (Heavy — Orcish Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Orcish Helmet', 'Heavy Armor — Requires Orcish Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'orichalcum_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Orcish Armor', 'Heavy Armor — Requires Orcish Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'orichalcum_ingot', 4), (r, 'iron_ingot', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Orcish Gauntlets', 'Heavy Armor — Requires Orcish Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'orichalcum_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Orcish Boots', 'Heavy Armor — Requires Orcish Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'orichalcum_ingot', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Orcish Shield', 'Heavy Armor — Requires Orcish Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'orichalcum_ingot', 3), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- GLASS ARMOR (Light — Glass Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Glass Helmet', 'Light Armor — Requires Glass Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'malachite_ingot', 2), (r, 'moonstone_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Glass Armor', 'Light Armor — Requires Glass Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'malachite_ingot', 4), (r, 'moonstone_ingot', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Glass Gauntlets', 'Light Armor — Requires Glass Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'malachite_ingot', 2), (r, 'moonstone_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Glass Boots', 'Light Armor — Requires Glass Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'malachite_ingot', 2), (r, 'moonstone_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Glass Shield', 'Light Armor — Requires Glass Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'malachite_ingot', 2), (r, 'moonstone_ingot', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- EBONY ARMOR (Heavy — Ebony Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Ebony Helmet', 'Heavy Armor — Requires Ebony Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 3), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Ebony Armor', 'Heavy Armor — Requires Ebony Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 5), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Ebony Gauntlets', 'Heavy Armor — Requires Ebony Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 2), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Ebony Boots', 'Heavy Armor — Requires Ebony Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 3), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Ebony Shield', 'Heavy Armor — Requires Ebony Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 4), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- DAEDRIC ARMOR (Heavy — Daedric Smithing Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Daedric Helmet', 'Heavy Armor — Requires Daedric Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 3), (r, 'daedra_heart', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Daedric Armor', 'Heavy Armor — Requires Daedric Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 5), (r, 'daedra_heart', 1), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Daedric Gauntlets', 'Heavy Armor — Requires Daedric Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 2), (r, 'daedra_heart', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Daedric Boots', 'Heavy Armor — Requires Daedric Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 3), (r, 'daedra_heart', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Daedric Shield', 'Heavy Armor — Requires Daedric Smithing perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'ebony_ingot', 4), (r, 'daedra_heart', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- DRAGONPLATE ARMOR (Heavy — Dragon Armor Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonplate Helmet', 'Heavy Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_bone', 2), (r, 'dragon_scales', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonplate Armor', 'Heavy Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_bone', 3), (r, 'dragon_scales', 2), (r, 'leather_strips', 3);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonplate Gauntlets', 'Heavy Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_bone', 2), (r, 'dragon_scales', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonplate Boots', 'Heavy Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_bone', 3), (r, 'dragon_scales', 1), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonplate Shield', 'Heavy Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_bone', 3), (r, 'dragon_scales', 1), (r, 'leather_strips', 1);

  -- ═══════════════════════════════════════════
  -- DRAGONSCALE ARMOR (Light — Dragon Armor Perk)
  -- ═══════════════════════════════════════════

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonscale Helmet', 'Light Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_scales', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonscale Armor', 'Light Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_scales', 4), (r, 'iron_ingot', 2), (r, 'leather_strips', 2);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonscale Gauntlets', 'Light Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_scales', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonscale Boots', 'Light Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_scales', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

  INSERT INTO recipes (name, description, crafting_fee) VALUES ('Dragonscale Shield', 'Light Armor — Requires Dragon Armor perk', 0) RETURNING id INTO r;
  INSERT INTO recipe_materials (recipe_id, item_key, quantity) VALUES (r, 'dragon_scales', 2), (r, 'iron_ingot', 1), (r, 'leather_strips', 1);

END $$;
