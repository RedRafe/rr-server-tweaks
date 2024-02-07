if not mods['WhatLiesWithin'] then
  return
end

if not settings.startup['rrst:wlw'].value then
  return
end

data.raw['ammo-turret']['gun-turret'].attack_parameters.range = data.raw['ammo-turret']['gun-turret'].attack_parameters.range + 20 -- 18 > 38
data.raw['electric-turret']['laser-turret'].attack_parameters.range = data.raw['electric-turret']['laser-turret'].attack_parameters.range + 20 -- 24 > 44
data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.range = data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.range + 20 -- 30 > 50

data.raw['energy-shield-equipment']['energy-shield-mk2-equipment'].max_shield_value = data.raw['energy-shield-equipment']['energy-shield-mk2-equipment'].max_shield_value * 5
data.raw.recipe['energy-shield-mk2-equipment'].ingredients = {
  {"energy-shield-equipment", 10 * 2},
  {"processing-unit", 5 * 2},
  {"low-density-structure", 5 * 2}
}

for _, armor in pairs(data.raw.armor) do
  for _, stat in pairs(armor.resistances) do
    if stat.decrease then
      stat.decrease = stat.decrease + 4
    end
    if stat.percent then
      stat.percent = math.min(stat.percent + 10, 100)
    end
  end
end
