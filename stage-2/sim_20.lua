if not settings.startup['rrst:sim20'].value then
  return
end

if mods['Janky-Foundry'] then
  data.raw.technology['Foundry'].unit.cost = 3500
  data.raw.technology['Foundry'].prerequisites = {'mining-productivity-11'}
end

if mods['Janky-EMP'] then
  data.raw.technology['EM-Plant'].unit.cost = 4000
  data.raw.technology['EM-Plant'].prerequisites = {'mining-productivity-13'}
end

require 'stage-2.reskin-deleveler'
require 'stage-2.reskin-emp'
require 'stage-2.reskin-foundry'
require 'stage-2.reskin-recycler'
