if not mods['Janky-EMP'] then
  return
end

local target_animation_speed = 1
local crafting_speed = 2
local module_slots = 5
local animation_speed = (target_animation_speed / crafting_speed) / (1 + 0.5 * module_slots)
local scale = 4 / 7

local e = data.raw['assembling-machine']['EM-Plant']

e.vehicle_impact_sound = { filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65 }
e.working_sound = { sound = { { filename = '__base__/sound/lab.ogg', volume = 0.8 } }, apparent_volume = 1.5 }

if mods['space-exploration-graphics-3'] then
  e.idle_animation = {
    layers = {
      {
        filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/base.png',
        priority = 'high',
        width = 448 / 2,
        height = 576 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(0, -16 * scale),
        animation_speed = animation_speed,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/base.png',
          priority = 'high',
          width = 448,
          height = 576,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(0, -16 * scale),
          animation_speed = animation_speed,
          scale = 0.5 * scale,
        },
      },
      {
        draw_as_shadow = true,
        filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/shadow.png',
        priority = 'high',
        width = 566 / 2,
        height = 400 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(35 * scale, 20 * scale),
        animation_speed = animation_speed,
        scale = scale,
        hr_version = {
          draw_as_shadow = true,
          filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/shadow.png',
          priority = 'high',
          width = 566,
          height = 400,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(35 * scale, 20 * scale),
          animation_speed = animation_speed,
          scale = 0.5 * scale,
        },
      },
    },
  }
  e.animation = {
    layers = {
      {
        filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/base.png',
        priority = 'high',
        width = 448 / 2,
        height = 576 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(0, -16 * scale),
        animation_speed = animation_speed,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/base.png',
          priority = 'high',
          width = 448,
          height = 576,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(0, -16 * scale),
          animation_speed = animation_speed,
          scale = 0.5 * scale,
        },
      },
      {
        priority = 'high',
        width = 1392 / 4 / 2,
        height = 1880 / 5 / 2,
        frame_count = 64,
        shift = util.by_pixel(0.5 * scale, -17 * scale),
        animation_speed = animation_speed,
        scale = scale,
        stripes = {
          {
            filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/animation-1.png',
            width_in_frames = 4,
            height_in_frames = 5,
          },
          {
            filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/animation-2.png',
            width_in_frames = 4,
            height_in_frames = 5,
          },
          {
            filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/animation-3.png',
            width_in_frames = 4,
            height_in_frames = 5,
          },
          {
            filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/animation-4.png',
            width_in_frames = 4,
            height_in_frames = 1,
          },
        },
        hr_version = {
          priority = 'high',
          width = 1392 / 4,
          height = 1880 / 5,
          frame_count = 64,
          shift = util.by_pixel(0.5 * scale, -17 * scale),
          animation_speed = animation_speed,
          scale = 0.5 * scale,
          stripes = {
            {
              filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/animation-1.png',
              width_in_frames = 4,
              height_in_frames = 5,
            },
            {
              filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/animation-2.png',
              width_in_frames = 4,
              height_in_frames = 5,
            },
            {
              filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/animation-3.png',
              width_in_frames = 4,
              height_in_frames = 5,
            },
            {
              filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/animation-4.png',
              width_in_frames = 4,
              height_in_frames = 1,
            },
          },
        },
      },
      {
        draw_as_shadow = true,
        filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/sr/shadow.png',
        priority = 'high',
        width = 566 / 2,
        height = 400 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(35 * scale, 20 * scale),
        animation_speed = animation_speed,
        scale = scale,
        hr_version = {
          draw_as_shadow = true,
          filename = '__space-exploration-graphics-3__/graphics/entity/electromagnetics-laboratory/hr/shadow.png',
          priority = 'high',
          width = 566,
          height = 400,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(35 * scale, 20 * scale),
          animation_speed = animation_speed,
          scale = 0.5 * scale,
        },
      },
    },
  }
  e.working_visualisations = {
    {
      effect = 'uranium-glow', -- changes alpha based on energy source light intensity
      light = { intensity = 0.6, size = 16, shift = { 0.0, 0.0 }, color = { r = 0.3, g = 0.5, b = 1 } },
    },
  }
end
