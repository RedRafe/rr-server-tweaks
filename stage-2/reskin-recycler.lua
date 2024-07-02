if not mods['janky-quality'] then
  return
end

local mechanical_target_animation_speed = 0.75
local mechanical_crafting_speed = 1
local mechanical_module_slots = 0
local mechanical_animation_speed = (mechanical_target_animation_speed / mechanical_crafting_speed) / (1 + 0.5 * mechanical_module_slots)
local scale = 3 / 7

local e = data.raw['furnace']['jq-recycler']

e.working_sound = {
  apparent_volume = 1.5,
  idle_sound = { filename = '__base__/sound/idle1.ogg', volume = 0.6 },
  sound = { { filename = '__base__/sound/burner-mining-drill.ogg', volume = 0.8 } },
}

if mods['space-exploration-graphics-5'] then
  e.animation = {
    layers = {
      {
        filename = '__space-exploration-graphics-5__/graphics/entity/recycling-facility/sr/recycling-facility.png',
        priority = 'high',
        width = 3840 / 8 / 2,
        height = 3584 / 8 / 2,
        frame_count = 64,
        line_length = 8,
        shift = util.by_pixel(-8 * scale, 0),
        animation_speed = mechanical_animation_speed,
        scale = scale,
        hr_version = {
          filename = '__space-exploration-graphics-5__/graphics/entity/recycling-facility/hr/recycling-facility.png',
          priority = 'high',
          width = 3840 / 8,
          height = 3584 / 8,
          frame_count = 64,
          line_length = 8,
          shift = util.by_pixel(-8 * scale, 0),
          animation_speed = mechanical_animation_speed,
          scale = 0.5 * scale,
        },
      },
      {
        draw_as_shadow = true,
        filename = '__space-exploration-graphics-5__/graphics/entity/recycling-facility/sr/recycling-facility-shadow.png',
        priority = 'high',
        width = 694 / 2,
        height = 400 / 2,
        frame_count = 1,
        line_length = 1,
        repeat_count = 64,
        shift = util.by_pixel(59 * scale, 17 * scale),
        animation_speed = mechanical_animation_speed,
        scale = scale,
        hr_version = {
          draw_as_shadow = true,
          filename = '__space-exploration-graphics-5__/graphics/entity/recycling-facility/hr/recycling-facility-shadow.png',
          priority = 'high',
          width = 694,
          height = 400,
          frame_count = 1,
          line_length = 1,
          repeat_count = 64,
          shift = util.by_pixel(59 * scale, 17 * scale),
          animation_speed = mechanical_animation_speed,
          scale = 0.5 * scale,
        },
      },
    },
  }
  e.working_visualisations = {
    {
      effect = 'uranium-glow', -- changes alpha based on energy source light intensity
      light = { intensity = 0.8, size = 18, shift = { 0.0, 0.0 }, color = { r = 1, g = 0.8, b = 0.5 } },
    },
  }
end
