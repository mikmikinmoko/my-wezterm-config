local wezterm = require("wezterm")
-- local constant = require("constant")
-- local commands = require("commands")
local config = wezterm.config_builder()

config.default_prog = {
	"wsl.exe",
	"--distribution",
	"Ubuntu",
}

-- Fonts
-- config.color_scheme = "Tokyo Night Storm"
-- config.color_scheme = "Afterglow"
config.color_scheme = "Chalk (Gogh)"
-- config.color_scheme = "City Streets (terminal.sexy)"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 12.0
config.line_height = 1.2
config.window_frame = {
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#222222",
}

-- Colors
config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
	cursor_fg = "black",
	selection_bg = "#fffacd",
	scrollbar_thumb = "#222222",
	-- split = "#44444444",
	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

--Appearance
config.window_background_opacity = 0.97
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- config.window_background_image = constant.image
config.window_padding = { left = 2, right = 2, top = 2, bottom = 2 }

-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

-- Commands
-- wezterm.on("augment-command-palette", function()
-- 	return commands
-- end)

-- Key bindings
-- config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
-- config.keys = {
-- 	{
-- 		key = "a",
-- 		mods = "LEADER",
-- 		action = act.SendKey({ key = "a", mods = "CTRL" }),
-- 	},
-- 	{
-- 		key = "c",
-- 		mods = "LEADER",
-- 		action = act.ActivateCopyMode,
-- 	},
-- }

return config
