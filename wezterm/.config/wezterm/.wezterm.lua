-- -----------------------------------------------------------------------------
-- WEZTERM CONFIGURATION
-- -----------------------------------------------------------------------------

local function color_scheme_for_appearance(appearance)
    if appearance:find "Dark" then
        return "Catppuccin Mocha"
    else
        return "Catppuccin Latte"
    end
end

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- -----------------------------------------------------------------------------
-- APPEARANCE & FONTS
-- -----------------------------------------------------------------------------

config.font = wezterm.font 'MesloLGS Nerd Font Mono'
config.font_size = 14.0
config.color_scheme = color_scheme_for_appearance(wezterm.gui.get_appearance())

config.default_cursor_style = 'BlinkingUnderline'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- -----------------------------------------------------------------------------
-- WINDOW UI
-- -----------------------------------------------------------------------------
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'
config.native_macos_fullscreen_mode = false

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

-- -----------------------------------------------------------------------------
-- MACOS & ZSH BEHAVIOR (KEYBINDING FIXES)
-- -----------------------------------------------------------------------------
-- Crucial for Zsh bindings! Forces the Option key to act as 'Meta' (Esc+) 
-- rather than typing special Mac characters (like ∫ or ƒ).
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- -----------------------------------------------------------------------------
-- CUSTOM KEYBINDINGS
-- -----------------------------------------------------------------------------

config.keys = {
  -- Default QuickSelect keybind (CTRL-SHIFT-Space) gets captured by macOS
  {
    key = 'A',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.QuickSelect,
  },
}

return config