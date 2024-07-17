local wezterm = require 'wezterm'
local act = wezterm.action


-- ### Functions ### --

local process_icons = {
  ['docker'] = wezterm.nerdfonts.linux_docker,
  ['docker-compose'] = wezterm.nerdfonts.linux_docker,
  ['psql'] = wezterm.nerdfonts.dev_postgresql,
  ['kuberlr'] = wezterm.nerdfonts.linux_docker,
  ['kubectl'] = wezterm.nerdfonts.linux_docker,
  ['stern'] = wezterm.nerdfonts.linux_docker,
  ['nvim'] = wezterm.nerdfonts.custom_vim,
  ['make'] = wezterm.nerdfonts.seti_makefile,
  ['vim'] = wezterm.nerdfonts.dev_vim,
  ['go'] = wezterm.nerdfonts.seti_go,
  ['zsh'] = wezterm.nerdfonts.dev_terminal,
  ['bash'] = wezterm.nerdfonts.cod_terminal_bash,
  ['btm'] = wezterm.nerdfonts.mdi_chart_donut_variant,
  ['htop'] = wezterm.nerdfonts.mdi_chart_donut_variant,
  ['cargo'] = wezterm.nerdfonts.dev_rust,
  ['sudo'] = wezterm.nerdfonts.fa_hashtag,
  ['lazydocker'] = wezterm.nerdfonts.linux_docker,
  ['git'] = wezterm.nerdfonts.dev_git,
  ['lua'] = wezterm.nerdfonts.seti_lua,
  ['wget'] = wezterm.nerdfonts.mdi_arrow_down_box,
  ['curl'] = wezterm.nerdfonts.mdi_flattr,
  ['gh'] = wezterm.nerdfonts.dev_github_badge,
  ['ruby'] = wezterm.nerdfonts.cod_ruby,
  ['pwsh'] = wezterm.nerdfonts.seti_powershell,
  ['node'] = wezterm.nerdfonts.dev_nodejs_small,
  ['dotnet'] = wezterm.nerdfonts.md_language_csharp,
}

-- ### Main Config ### --

local config = {}

config = wezterm.config_builder()

-- Color Scheme

config.color_scheme = 'Catppuccin Macchiato'

-- Font

config.font_size = 12
config.font = wezterm.font('JetBrainsMono Nerd Font', {weight = 'Bold', italic = false})

-- General

config.default_prog = {'/bin/zsh'}
config.scrollback_lines = 3000
config.hide_mouse_cursor_when_typing = true

-- Cursor

config.default_cursor_style = 'BlinkingUnderline'
config.cursor_thickness = '150%'
config.cursor_blink_rate = 800

-- Tab/Status Bar

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.status_update_interval = 1000
config.tab_max_width = 60
-- config.tab_bar_fill = true

-- Panes

config.inactive_pane_hsb = {
  saturation = 0.6,
  brightness = 0.7,
}

-- Window

config.window_background_opacity = 0.75
config.window_decorations = "TITLE | RESIZE"
config.window_close_confirmation = 'AlwaysPrompt'

config.window_padding = {
--  left = '1cell',
--  right = '1cell',
--  top = '0.5cell',
--  bottom = '0.5cell',
  top = 7,
  right = 7,
  bottom = 2,
  left = 7,  
}

config.window_frame = {
  font = require('wezterm').font 'Roboto',
  font_size = 12,

  inactive_titlebar_bg = '#3e2569',
  active_titlebar_bg = '#7e56c2',
  inactive_titlebar_fg = '#cccccc',
  active_titlebar_fg = '#ffffff',
  inactive_titlebar_border_bottom = '#3e2569',
  active_titlebar_border_bottom = '#7e56c2',
  button_fg = '#cccccc',
  button_bg = '#7e56c2',
  button_hover_fg = '#ffffff',
  button_hover_bg = '#a57bed',
}

return config
