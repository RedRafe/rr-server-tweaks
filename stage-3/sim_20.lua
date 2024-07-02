if not settings.startup['rrst:sim20'].value then
  return
end

-- Move stack recipes
if mods['deadlock_stacked_recipes'] then
  local function startsWith(inputstr, start) 
    return inputstr:sub(1, #start) == start 
  end

  local bulk = data.raw.technology['rr-bulk-recipes']
  bulk.effects[#bulk.effects + 1] = { type = 'unlock-recipe', recipe = 'transport-belt-beltbox' }
  bulk.effects[#bulk.effects + 1] = { type = 'unlock-recipe', recipe = 'fast-transport-belt-beltbox' }
  bulk.effects[#bulk.effects + 1] = { type = 'unlock-recipe', recipe = 'express-transport-belt-beltbox' }
  bulk.effects[#bulk.effects + 1] = { type = 'unlock-recipe', recipe = 'rapid-transport-belt-beltbox' }

  for _, t in pairs(data.raw.technology) do
    if t.name ~= bulk.name and t.effects and #t.effects > 0 then
      for i = #t.effects, 1, -1 do
        local eff = t.effects[i]
        if eff and eff.recipe and (startsWith(eff.recipe, 'deadlock-stacks-') or startsWith(eff.recipe, 'StackedRecipe-')) then
          bulk.effects[#bulk.effects + 1] = table.deepcopy(eff)
          t.effects[i] = nil
        end
      end
    end
  end

  data.raw.technology['deadlock-stacking-1'] = nil
  data.raw.technology['deadlock-stacking-2'] = nil
  data.raw.technology['deadlock-stacking-3'] = nil
  data.raw.technology['deadlock-stacking-4'] = nil
  data.raw.technology['dsr-technology-automation-science-pack'] = nil
  data.raw.technology['dsr-technology-logistic-science-pack'] = nil
  data.raw.technology['dsr-technology-military-science-pack'] = nil
  data.raw.technology['dsr-technology-chemical-science-pack'] = nil
  data.raw.technology['dsr-technology-production-science-pack'] = nil
end
