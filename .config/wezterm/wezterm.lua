local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Dracula (Official)'

config.font_size = 14
config.font = wezterm.font('JetBrainsMono Nerd Font', {weight = 'Bold', italic = false})

config.default_prog = {'/bin/zsh'}

config.hide_tab_bar_if_only_one_tab = true
config.hide_mouse_cursor_when_typing = true

config.default_cursor_style = 'BlinkingUnderline'
config.cursor_thickness = '150%'
config.cursor_blink_rate = 800

config.window_background_opacity = 0.75

config.window_decorations = "TITLE | RESIZE"

config.window_frame = {
  font = wezterm.font('JetBrainsMono Nerd Font', {weight = 'Bold', italic = false}),
  font_size = 12,
}

config.window_frame = {
  inactive_titlebar_bg = '#1d1236',
  active_titlebar_bg = '#4d2d8c',
  inactive_titlebar_fg = '#cccccc',
  active_titlebar_fg = '#ffffff',
  inactive_titlebar_border_bottom = '#2b2042',
  active_titlebar_border_bottom = '#4d2d8c',
  button_fg = '#cccccc',
  button_bg = '#4d2d8c',
  button_hover_fg = '#ffffff',
  button_hover_bg = '#7c4fd6',
}

config.tab_max_width = 100

return config
