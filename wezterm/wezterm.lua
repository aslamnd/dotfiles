local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General
config.font_size = 19
config.line_height = 1.2
config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Catppuccin Macchiato"

config.colors = {
	cursor_bg = "#7aa2f7",
	cursor_border = "#7aa2f7",
}

--config.window_background_opacity = 0.99
--config.macos_window_background_blur = 15

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.keys = {
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.SendString("clear\n"),
	},
}

return config
