local wezterm = require("wezterm")
-- local constant = require("constant")
-- local commands = require("commands")
local config = wezterm.config_builder()
-- local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"

config.default_prog = {
	"wsl.exe",
	"--distribution",
	"Ubuntu",
	"--exec",
	"/home/mikmikinmoko/.wsl-wezterm-launch.sh",
}

-- Color Schme
-- config.color_scheme = "Apprentice (base16)" -- Choices
config.color_scheme = "Ashes (base16)" -- Choices
-- config.color_scheme = "Abernathy" -- Choices
-- config.color_scheme = "Afterglow" -- Choices

-- config.color_scheme = "Catppuccin Frappe" -- or Macchiato, Frappe, Latte
-- config.color_scheme = "Tokyo Night Storm"
--
config.font = wezterm.font("JetBrains Mono", { stretch = "Normal", weight = "DemiBold" })
config.font_size = 11.0
config.line_height = 1.2
config.window_frame = {
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#222222",
}
config.animation_fps = 144

-- Colors
-- config.colors = {
-- 	-- background = "rgba(35, 25, 20, 0.75)", -- Warm brown
-- 	-- cursor_bg = "#f4dbd6",
-- 	-- selection_bg = "rgba(91, 65, 48, 0.8)",
--
-- 	-- background = "rgba(20, 30, 35, 0.75)", -- Cool teal
-- 	-- cursor_bg = "#8bd5ca",
-- 	-- selection_bg = "rgba(48, 71, 91, 0.8)",
--
-- 	-- Primary background - subtle and works great with Acrylic
-- 	background = "rgba(20, 25, 35, 0.75)", -- Deep blue-gray
--
-- 	-- Cursor colors
-- 	cursor_bg = "#ffffff",
-- 	cursor_fg = "#000000",
-- 	cursor_border = "#ffffff",
--
-- 	-- Selection colors
-- 	selection_bg = "rgba(68, 71, 90, 0.8)",
-- 	selection_fg = "#ffffff",
--
-- 	-- Split borders
-- 	split = "#44475a",
--
-- 	-- Scrollbar
-- 	scrollbar_thumb = "rgba(68, 71, 90, 0.8)",
--
-- 	-- Tab bar (if enabled)
-- 	tab_bar = {
-- 		background = "rgba(40, 42, 54, 0.6)",
-- 		active_tab = {
-- 			bg_color = "rgba(68, 71, 90, 0.9)",
-- 			fg_color = "#ffffff",
-- 		},
-- 		inactive_tab = {
-- 			bg_color = "rgba(40, 42, 54, 0.5)",
-- 			fg_color = "#a8a8a8",
-- 		},
-- 	},
--
-- 	-- ANSI colors optimized for blur background
-- 	ansi = {
-- 		"#21222c", -- black
-- 		"#ff5555", -- red
-- 		"#50fa7b", -- green
-- 		"#f1fa8c", -- yellow
-- 		"#bd93f9", -- blue
-- 		"#ff79c6", -- magenta
-- 		"#8be9fd", -- cyan
-- 		"#f8f8f2", -- white
-- 	},
--
-- 	brights = {
-- 		"#6272a4", -- bright black
-- 		"#ff6e6e", -- bright red
-- 		"#69ff94", -- bright green
-- 		"#ffffa5", -- bright yellow
-- 		"#d6acff", -- bright blue
-- 		"#ff92df", -- bright magenta
-- 		"#a4ffff", -- bright cyan
-- 		"#ffffff", -- bright white
-- 	},
-- }
config.colors = {
	-- Very dark background for maximum contrast
	background = "rgba(8, 8, 12, 0.80)", -- Almost black with slight blue tint

	-- Cursor colors
	cursor_bg = "#ffffff",
	cursor_fg = "#000000",
	cursor_border = "#ffffff",

	-- Selection colors
	selection_bg = "rgba(44, 44, 52, 0.9)",
	selection_fg = "#ffffff",

	-- Split borders
	split = "#2c2c34",

	-- Scrollbar
	scrollbar_thumb = "rgba(44, 44, 52, 0.8)",

	-- Tab bar (if enabled)
	tab_bar = {
		background = "rgba(16, 16, 20, 0.7)",
		active_tab = {
			bg_color = "rgba(32, 32, 40, 0.9)",
			fg_color = "#ffffff",
		},
		inactive_tab = {
			bg_color = "rgba(16, 16, 20, 0.6)",
			fg_color = "#a0a0a0",
		},
	},

	-- ANSI colors - bright colors on dark background
	ansi = {
		"#1a1a1a", -- black (very dark)
		"#ff5370", -- red
		"#c3e88d", -- green
		"#ffcb6b", -- yellow
		"#82aaff", -- blue
		"#c792ea", -- magenta
		"#89ddff", -- cyan
		"#eeffff", -- white
	},

	brights = {
		"#545454", -- bright black (dark gray)
		"#ff6690", -- bright red
		"#c5e478", -- bright green
		"#ffd54f", -- bright yellow
		"#84c5ff", -- bright blue
		"#d197f0", -- bright magenta
		"#7fdbff", -- bright cyan
		"#ffffff", -- bright white
	},
}
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- config.window_background_gradient = {
--   colors = { "rgba(30, 30, 46, 0.9)", "rgba(40, 40, 60, 0.8)" },
--   orientation = "Vertical",
-- } Appearance
config.win32_system_backdrop = "Acrylic" -- Options: "Auto", "Disable", "Acrylic", "Mica", "Tabbed"
config.window_background_opacity = 0.7
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.audible_bell = "Disabled"

-- config.window_background_image = constant.image
config.window_padding = { left = 2, right = 2, top = 2, bottom = 2 }

-- Miscellaneous settings
config.max_fps = 144
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
