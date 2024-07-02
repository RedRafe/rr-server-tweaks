if not mods['janky-quality'] then
  return
end

local cpu4_target_animation_speed = 0.5
local cpu4_crafting_speed = 1
local cpu4_module_slots = 0
local cpu4_animation_speed = (cpu4_target_animation_speed / cpu4_crafting_speed) / (1 + 0.5 * cpu4_module_slots)
local scale = 3 / 5

local e = data.raw['furnace']['jq-deleveler']

e.working_sound = { sound = { { filename = '__base__/sound/lab.ogg', volume = 0.7 } }, apparent_volume = 1 }

if mods['space-exploration-graphics-5'] then
  e.animation = {
    layers = {
      {
        filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/sr/supercomputer-4.png',
        priority = 'high',
        width = 320 / 2,
        height = 384 / 2,
        frame_count = 1,
        shift = util.by_pixel(-0, -16 * scale),
        animation_speed = cpu4_animation_speed,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/hr/supercomputer-4.png',
          priority = 'high',
          width = 320,
          height = 384,
          frame_count = 1,
          shift = util.by_pixel(-0, -16 * scale),
          animation_speed = cpu4_animation_speed,
          scale = 0.5 * scale,
        },
      },
      {
        draw_as_shadow = true,
        filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/sr/supercomputer-shadow.png',
        priority = 'high',
        width = 264 / 2,
        height = 234 / 2,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(75 * scale, 23 * scale),
        animation_speed = cpu4_animation_speed,
        scale = scale,
        hr_version = {
          draw_as_shadow = true,
          filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/hr/supercomputer-shadow.png',
          priority = 'high',
          width = 264,
          height = 234,
          frame_count = 1,
          line_length = 1,
          shift = util.by_pixel(75 * scale, 23 * scale),
          animation_speed = cpu4_animation_speed,
          scale = 0.5 * scale,
        },
      },
    },
  }
  e.working_visualisations = {
    {
      effect = 'uranium-glow', -- changes alpha based on energy source light intensity
      light = { intensity = 0.8, size = 16, shift = { 0.0, 0.0 }, color = { r = 0.3, g = 0.1, b = 1 } },
    },
    {
      animation = {
        filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/sr/supercomputer-4-working.png',
        priority = 'high',
        width = 504 / 4 / 2,
        height = 1064 / 4 / 2,
        line_length = 4,
        frame_count = 16,
        shift = util.by_pixel(-0, -22 * scale),
        animation_speed = cpu4_animation_speed,
        blend_mode = 'additive',
        draw_as_glow = true,
        max_advance = 1,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-5__/graphics/entity/supercomputer/hr/supercomputer-4-working.png',
          priority = 'high',
          width = 504 / 4,
          height = 1064 / 4,
          line_length = 4,
          frame_count = 16,
          shift = util.by_pixel(-0, -22 * scale),
          animation_speed = cpu4_animation_speed,
          blend_mode = 'additive',
          draw_as_glow = true,
          max_advance = 1,
          scale = 0.5 * scale,
        },
      },
    },
  }
end
