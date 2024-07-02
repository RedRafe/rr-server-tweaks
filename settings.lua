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
		default_value = false,
		order = 'c:a',
	},
	{
		name = 'rrst:sim20',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = false,
		order = 'c:b',
	},
})