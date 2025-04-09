local wezterm = require("wezterm")
local constant = require("constant")
local config = wezterm.config_builder()
local act = wezterm.action
print(constant)

-- Fonts
config.color_scheme = "Batman"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 10.0
config.line_height = 1.2
config.window_frame = {
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#222222",
}

-- Colors
-- config.colors = {
-- 	cursor_bg = "#52ad70",
-- 	cursor_border = "white",
-- 	cursor_fg = "black",
-- 	selection_bg = "#fffacd",
-- 	scrollbar_thumb = "#222222",
-- 	-- split = "#44444444",
-- 	tab_bar = {
-- 		inactive_tab_edge = "#575757",
-- 	},
-- }
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}
config.colors = {
	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = "#0b0022",

		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = "#2b2042",
			-- The color of the text for the tab
			fg_color = "#c0c0c0",

			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = "Normal",

			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = "None",

			-- Specify whether you want the text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = true,

			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},

		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab_hover`.
		},

		-- The new tab button that let you create new tabs
		new_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab_hover`.
		},
	},
}
--Appearance
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = "c:/Users/AMD/.config/wezterm/assets/darkspace.jpg"
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
