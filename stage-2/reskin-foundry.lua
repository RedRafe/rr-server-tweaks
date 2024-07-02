if not mods['Janky-Foundry'] then
  return
end

local thermo_target_animation_speed = 0.75
local thermo_crafting_speed = 2
local thermo_module_slots = 4
local thermo_animation_speed = (thermo_target_animation_speed / thermo_crafting_speed) / (1 + 0.5 * thermo_module_slots)
local scale = 5 / 7

local e = data.raw['assembling-machine']['Foundry']

e.vehicle_impact_sound = { filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65 }
e.working_sound = {
  apparent_volume = 1.5,
  idle_sound = { filename = '__base__/sound/idle1.ogg', volume = 0.6 },
  sound = { { filename = '__base__/sound/electric-furnace.ogg', volume = 0.8 } },
}

if mods['space-exploration-graphics-2'] then
  e.animation = {
    layers = {
      {
        filename = '__space-exploration-graphics-2__/graphics/entity/thermodynamics-laboratory/sr/thermodynamics-laboratory.png',
        priority = 'high',
        width = 3584 / 8 / 2,
        height = 3840 / 8 / 2,
        frame_count = 64,
        line_length = 8,
        shift = util.by_pixel(0, -8 * scale),
        animation_speed = thermo_animation_speed,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-2__/graphics/entity/thermodynamics-laboratory/hr/thermodynamics-laboratory.png',
          priority = 'high',
          width = 3584 / 8,
          height = 3840 / 8,
          frame_count = 64,
          line_length = 8,
          shift = util.by_pixel(0, -8 * scale),
          animation_speed = thermo_animation_speed,
          scale = 0.5 * scale,
        },
      },
      {
        draw_as_shadow = true,
        filename = '__space-exploration-graphics-2__/graphics/entity/thermodynamics-laboratory/sr/thermodynamics-laboratory-shadow.png',
        priority = 'high',
        width = 442 / 2,
        height = 394 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(21 * scale, 13 * scale),
        animation_speed = thermo_animation_speed,
        scale = scale,
        hr_version = {
          draw_as_shadow = true,
          filename = '__space-exploration-graphics-2__/graphics/entity/thermodynamics-laboratory/hr/thermodynamics-laboratory-shadow.png',
          priority = 'high',
          width = 442,
          height = 394,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(21 * scale, 13 * scale),
          animation_speed = thermo_animation_speed,
          scale = 0.5 * scale,
        },
      },
    },
  }
  e.working_visualisations = {
    {
      effect = 'uranium-glow', -- changes alpha based on energy source light intensity
      light = { intensity = 0.8, size = 18, shift = { 0.0, 0.0 }, color = { r = 1, g = 0.7, b = 0.1 } },
    },
  }
end
