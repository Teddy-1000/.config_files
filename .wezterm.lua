-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- set defult shell
config.default_prog = { "/usr/bin/zsh", "-l" }

-- set font
config.font = wezterm.font("UbuntuMono Nerd Font")

-- For example, changing the color scheme:
config.color_scheme = "Gruvbox Dark (Gogh)"

-- Custom keybinds
config.keys = {
	-- Disable default action
	{
		key = "F5",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "F6",
		action = wezterm.action.DisableDefaultAssignment,
	},

	-- Assign new functions
	{
		key = "F6",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "F5",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- and finally, return the configuration to wezterm
return config
