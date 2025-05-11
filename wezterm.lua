local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

-- Launch PowerShell Core with profile loaded
config.default_prog = {
	"pwsh", -- or "powershell.exe" if you use Windows PowerShell
	"-NoLogo",
	"-NoExit",
	"-ExecutionPolicy",
	"Bypass",
	"-Command",
	"& {Invoke-Expression (Get-Content -Raw $PROFILE)}",
}

-- Fonts
config.color_scheme = "GruvboxDark"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 9.0
config.line_height = 1.2
config.window_frame = {
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#222222",
}

-- Colors
config.colors = {
	cursor_bg = "#52ad70",
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
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = { left = 2, right = 2, top = 2, bottom = 2 }

-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

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
