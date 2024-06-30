-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Nord (Gogh)'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 18.0
config.enable_scroll_bar = true
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
