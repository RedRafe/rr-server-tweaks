if not settings.startup['rrst:sim20'].value then
  return
end

-- Mirrored cracking recipes
if not mods['GDIW'] then
  data:extend({
    {
      type = 'recipe',
      name = 'basic-oil-processing-mirror',
      hide_from_player_crafting = true,
      category = 'oil-processing',
      enabled = false,
      energy_required = 5,
      ingredients = { { type = 'fluid', name = 'crude-oil', amount = 100, fluidbox_index = 1 } },
      results = { { type = 'fluid', name = 'petroleum-gas', amount = 45, fluidbox_index = 1 } },
      icons = {
        { icon = '__base__/graphics/icons/fluid/basic-oil-processing.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      subgroup = 'fluid-recipes',
      order = 'a[oil-processing]-a[basic-oil-processing]',
      main_product = '',
    },
    {
      type = 'recipe',
      name = 'advanced-oil-processing-mirror',
      hide_from_player_crafting = true,
      category = 'oil-processing',
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = 'fluid', name = 'crude-oil', amount = 100 },
        { type = 'fluid', name = 'water', amount = 50 },
      },
      results = {
        { type = 'fluid', name = 'petroleum-gas', amount = 55 },
        { type = 'fluid', name = 'light-oil', amount = 45 },
        { type = 'fluid', name = 'heavy-oil', amount = 25 },
      },
      icons = {
        { icon = '__base__/graphics/icons/fluid/advanced-oil-processing.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      subgroup = 'fluid-recipes',
      order = 'a[oil-processing]-b[advanced-oil-processing]',
    },
    {
      type = 'recipe',
      name = 'coal-liquefaction-mirror',
      hide_from_player_crafting = true,
      category = 'oil-processing',
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = 'item', name = 'coal', amount = 10 },
        { type = 'fluid', name = 'steam', amount = 50 },
        { type = 'fluid', name = 'heavy-oil', amount = 25 },
      },
      results = {
        { type = 'fluid', name = 'petroleum-gas', amount = 10 },
        { type = 'fluid', name = 'light-oil', amount = 20 },
        { type = 'fluid', name = 'heavy-oil', amount = 90 },
      },
      icons = {
        { icon = '__base__/graphics/icons/fluid/coal-liquefaction.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      subgroup = 'fluid-recipes',
      order = 'a[oil-processing]-c[coal-liquefaction]',
      allow_decomposition = false,
    },
    {
      type = 'recipe',
      name = 'heavy-oil-cracking-mirror',
      hide_from_player_crafting = true,
      category = 'chemistry',
      enabled = false,
      energy_required = 2,
      ingredients = { { type = 'fluid', name = 'heavy-oil', amount = 40 },
                      { type = 'fluid', name = 'water', amount = 30 } },
      results = { { type = 'fluid', name = 'light-oil', amount = 30 } },
      main_product = '',
      icons = {
        { icon = '__base__/graphics/icons/fluid/heavy-oil-cracking.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      subgroup = 'fluid-recipes',
      order = 'b[fluid-chemistry]-a[heavy-oil-cracking]',
      crafting_machine_tint = {
        primary = { r = 1.000, g = 0.642, b = 0.261, a = 1.000 }, -- #ffa342ff
        secondary = { r = 1.000, g = 0.722, b = 0.376, a = 1.000 }, -- #ffb85fff
        tertiary = { r = 0.854, g = 0.659, b = 0.576, a = 1.000 }, -- #d9a892ff
        quaternary = { r = 1.000, g = 0.494, b = 0.271, a = 1.000 }, -- #ff7e45ff
      },
    },
    {
      type = 'recipe',
      name = 'light-oil-cracking-mirror',
      hide_from_player_crafting = true,
      category = 'chemistry',
      enabled = false,
      energy_required = 2,
      ingredients = { { type = 'fluid', name = 'light-oil', amount = 30 },
                      { type = 'fluid', name = 'water', amount = 30 } },
      results = { { type = 'fluid', name = 'petroleum-gas', amount = 20 } },
      main_product = '',
      icons = {
        { icon = '__base__/graphics/icons/fluid/light-oil-cracking.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      subgroup = 'fluid-recipes',
      order = 'b[fluid-chemistry]-b[light-oil-cracking]',
      crafting_machine_tint = {
        primary = { r = 0.764, g = 0.596, b = 0.780, a = 1.000 }, -- #c298c6ff
        secondary = { r = 0.762, g = 0.551, b = 0.844, a = 1.000 }, -- #c28cd7ff
        tertiary = { r = 0.895, g = 0.773, b = 0.596, a = 1.000 }, -- #e4c597ff
        quaternary = { r = 1.000, g = 0.734, b = 0.290, a = 1.000 }, -- #ffbb49ff
      },
    },
    {
      type = 'recipe',
      name = 'sulfur-mirror',
      hide_from_player_crafting = true,
      category = 'chemistry',
      energy_required = 1,
      enabled = false,
      ingredients = {
        { type = 'fluid', name = 'petroleum-gas', amount = 30 },
        { type = 'fluid', name = 'water', amount = 30 },
      },
      icons = {
        { icon = '__base__/graphics/icons/sulfur.png', icon_size = 64, icon_mipmaps = 4, },
        { icon = '__rr-server-tweaks__/graphics/icons/symmetry_filled.png', icon_size = 128, scale = 0.15, shift = { 8, -8 } },
      },
      results = { { type = 'item', name = 'sulfur', amount = 2 } },
      crafting_machine_tint = {
        primary = { r = 1.000, g = 0.995, b = 0.089, a = 1.000 }, -- #fffd16ff
        secondary = { r = 1.000, g = 0.974, b = 0.691, a = 1.000 }, -- #fff8b0ff
        tertiary = { r = 0.723, g = 0.638, b = 0.714, a = 1.000 }, -- #b8a2b6ff
        quaternary = { r = 0.954, g = 1.000, b = 0.350, a = 1.000 }, -- #f3ff59ff
      },
    },
  })

  for _, r in pairs({
    'basic-oil-processing',
    'advanced-oil-processing',
    'coal-liquefaction',
    'heavy-oil-cracking',
    'light-oil-cracking',
    'sulfur',
  }) do
    for _, t in pairs(data.raw.technology) do
      for _, e in pairs(t.effects or {}) do
        if e.recipe and e.recipe == r then
          t.effects[#t.effects + 1] = { type = 'unlock-recipe', recipe = r .. '-mirror' }
        end
      end
    end
  end

  data.raw.recipe['basic-oil-processing-mirror'].localised_name = 'Basic oil processing ([color=blue]mirrored[/color])'
  data.raw.recipe['advanced-oil-processing-mirror'].localised_name = 'Advanced oil processing ([color=blue]mirrored[/color])'
  data.raw.recipe['coal-liquefaction-mirror'].localised_name = 'Coal liquefaction ([color=blue]mirrored[/color])'
  data.raw.recipe['heavy-oil-cracking-mirror'].localised_name = 'Heavy oil cracking ([color=blue]mirrored[/color])'
  data.raw.recipe['light-oil-cracking-mirror'].localised_name = 'Light oil cracking ([color=blue]mirrored[/color])'
  data.raw.recipe['sulfur-mirror'].localised_name = 'Sulfur ([color=blue]mirrored[/color])'
end

-- Rapid belts tweaks
if mods['rapid-beltsv1'] then
  local t = data.raw.technology['logistics-4']
  t.unit.time = 60
  t.unit.cost = 2500 
  t.unit.ingredients = {
    { 'automation-science-pack', 1 },
    { 'logistic-science-pack', 1 },
    { 'chemical-science-pack', 1 },
    { 'production-science-pack', 1 },
    { 'space-science-pack', 1 },
  }
  t.prerequisites = { 'mining-productivity-9' }

  data.raw.recipe['rapid-transport-belt'].normal.ingredients = {
    { 'express-transport-belt', 1 },
    { 'iron-gear-wheel', 20 },
    { 'electric-engine-unit', 1 },
    { 'uranium-238', 1 },
  }
  data.raw.recipe['rapid-underground-belt'].ingredients = {
    { 'express-underground-belt', 2 },
    { 'iron-gear-wheel', 120 },
    { 'uranium-238', 10 },
  }
  data.raw.recipe['rapid-splitter'].ingredients = {
    { 'express-splitter', 1 },
    { 'iron-gear-wheel', 10 },
    { 'advanced-circuit', 10 },
    { 'uranium-238', 3 },
  }

  data.raw['transport-belt']['express-transport-belt'].next_upgrade = 'rapid-transport-belt'
  data.raw['underground-belt']['express-underground-belt'].next_upgrade = 'rapid-underground-belt'
  data.raw['splitter']['express-splitter'].next_upgrade = 'rapid-splitter'

  if mods['deadlock-beltboxes-loaders'] then
    deadlock.add_tier({
      transport_belt = 'rapid-transport-belt',
      colour = {r= 186, g= 204, b= 129},
      technology = 'logistics-4',
      order = 'd',
      loader_ingredients = {
        { 'express-transport-belt-loader', 1 },
        { 'iron-gear-wheel', 20 },
        { 'uranium-238', 2 },
      },
      beltbox_technology = 'deadlock-stacking-4',
      beltbox_ingredients = {
        { 'express-transport-belt-beltbox', 1 },
        { 'iron-gear-wheel', 20 },
        { 'uranium-238', 2 },
      },
    })

    data.raw.furnace['express-transport-belt-beltbox'].next_upgrade = 'rapid-transport-belt-beltbox'
    data.raw.furnace['rapid-transport-belt-beltbox'].localised_name = 'Rapid stacking beltbox'
    data.raw.recipe['rapid-transport-belt-beltbox'].localised_name = 'Rapid stacking beltbox'
    data.raw.item['rapid-transport-belt-beltbox'].localised_name = 'Rapid stacking beltbox'
    table.insert(data.raw.technology['deadlock-stacking-4'].prerequisites, 'deadlock-stacking-3')
  end
end

-- Add inf tech steps
local function table_contains(tbl, x)
  for _, v in pairs(tbl) do
    if v == x then
      return true
    end
  end
  return false
end

---@param root_tech_name string --[[i.e. 'mining-productivity']]
---@param level number
local function interrupt_infinite_tech(root_tech_name, level)
  local current = root_tech_name .. '-' .. tostring(level)
  if data.raw.technology[current] then
    return
  end

  for i = level, 1, -1 do
    local previous = root_tech_name .. '-' .. tostring(i)
    if data.raw.technology[previous] then

      local old_tech = data.raw.technology[previous]
      local new_tech = table.deepcopy(old_tech)
      new_tech.name = current
      new_tech.prerequisites = { previous }
      old_tech.max_level = level - 1

      -- replace prerequisites
      for _, tech in pairs(data.raw.technology) do
        --        if table_contains(tech.prerequisites or {}, previous) then
        for i, p in pairs(tech.prerequisites or {}) do
          if p == previous then
            tech.prerequisites[i] = current
          end
        end
        --        end
      end

      -- add new
      data:extend({ new_tech })
      return
    end
  end
end

interrupt_infinite_tech('stronger-explosives', 11)
interrupt_infinite_tech('energy-weapons-damage', 11)
interrupt_infinite_tech('worker-robots-speed', 11)
interrupt_infinite_tech('mining-productivity', 9)
interrupt_infinite_tech('mining-productivity', 11)
interrupt_infinite_tech('mining-productivity', 13)
interrupt_infinite_tech('mining-productivity', 15)
interrupt_infinite_tech('mining-productivity', 17)
interrupt_infinite_tech('mining-productivity', 21)

-- Stack recipes tech
if mods['deadlock_stacked_recipes'] then
  data:extend({
    {
      name = 'rr-bulk-recipes',
      type = 'technology',
      localised_name = 'Bulk recipes',
      effects = {},
      icon = '__rr-server-tweaks__/graphics/technology/bulk-recipes.png',
      icon_size = 256,
      order = 'e-g',
      prerequisites = { 'mining-productivity-17' },
      unit = {
        count = 5000,
        ingredients = {
          { 'automation-science-pack', 1 },
          { 'logistic-science-pack', 1 },
          { 'chemical-science-pack', 1 },
          { 'production-science-pack', 1 },
          { 'utility-science-pack', 1 },
          { 'space-science-pack', 1 },
        },
        time = 60,
      },
    },
  })
end

data:extend({
  {
    type = 'technology',
    name = 'rr-research-productivity-1',
    localised_name = 'Laboratory productivity 1',
    icons = util.technology_icon_constant_productivity('__base__/graphics/technology/research-speed.png'),
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = { 'mining-productivity-11' },
    effects = { { type = 'laboratory-productivity', modifier = 0.05 } },
    unit = {
      count = 5000,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'space-science-pack', 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = 'c-a',
  },
  {
    type = 'technology',
    name = 'rr-research-productivity-2',
    localised_name = 'Laboratory productivity 2',
    icons = util.technology_icon_constant_productivity('__base__/graphics/technology/research-speed.png'),
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = { 'rr-research-productivity-1', 'mining-productivity-13' },
    effects = { { type = 'laboratory-productivity', modifier = 0.05 } },
    unit = {
      count = 10000,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'space-science-pack', 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = 'c-a',
  },
  {
    type = 'technology',
    name = 'rr-research-productivity-3',
    localised_name = 'Laboratory productivity 3',
    icons = util.technology_icon_constant_productivity('__base__/graphics/technology/research-speed.png'),
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = { 'rr-research-productivity-2', 'mining-productivity-15' },
    effects = { { type = 'laboratory-productivity', modifier = 0.05 } },
    unit = {
      count = 20000,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'space-science-pack', 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = 'c-a',
  },
  {
    type = 'technology',
    name = 'rr-research-productivity-4',
    localised_name = 'Laboratory productivity 4',
    icons = util.technology_icon_constant_productivity('__base__/graphics/technology/research-speed.png'),
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = { 'rr-research-productivity-3', 'mining-productivity-17' },
    effects = { { type = 'laboratory-productivity', modifier = 0.05 } },
    unit = {
      count = 50000,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'space-science-pack', 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = 'c-a',
  },
})
