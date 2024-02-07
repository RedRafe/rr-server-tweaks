data:extend({
	-- data
	-- control
	{
		name = 'rrst:game_speed',
		type = 'bool-setting',
		setting_type = 'runtime-global',
		default_value = true,
		order = 'b:a',
	},
	-- compatibility
	{
		name = 'rrst:wlw',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = true,
		order = 'c:a',
	},
})