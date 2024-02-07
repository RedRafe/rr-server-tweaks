local STOPPED_SPEED = 0.01

local function log_speed()
  local msg = "Game speed: " .. tostring(game.speed)
  game.print(msg)
  log(msg)
end

local function on_init()
  global.game_speed = game.speed
end

local function reset_speed(event)
  if not settings.global['rrst:game_speed'].value then
    return
  end

  if global.game_speed and (game.speed ~= global.game_speed) then
    game.speed = global.game_speed or 1
    log_speed()
  end
end

local function reduce_speed(event)
  if not settings.global['rrst:game_speed'].value then
    return
  end

  if #game.connected_players == 1 then
    global.game_speed = game.speed
    game.speed = STOPPED_SPEED
    log_speed()
  end
end


---@type ScriptLib
local Public = {}

Public.on_init = on_init

Public.events = {
  [defines.events.on_player_joined_game] = reset_speed,
  [defines.events.on_pre_player_left_game] = reduce_speed
}

return Public