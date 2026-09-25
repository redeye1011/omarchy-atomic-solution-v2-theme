-- Atomic Solution: cyan-to-violet border gradient, obsidian void background,
-- and 0.93 translucency for every skinned window (no blur).

local active_border_color = { colors = { "rgba(2fd3c9ee)", "rgba(878af8ee)" }, angle = 45 }
local inactive_border_color = "rgba(11181baa)"
local shadow_color = "rgba(00000088)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    gaps_in = 4,
    gaps_out = 6,
    border_size = 2,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,
    shadow = {
      enabled = true,
      range = 18,
      render_power = 3,
      color = shadow_color,
      color_inactive = shadow_color,
      offset = "0 0",
    },
  },

  misc = {
    background_color = "rgb(040708)",
  },
})

-- Apps without a themeable background alpha get the same look through window
-- opacity: 0.93 under the mouse (focus follows mouse), 0.84 elsewhere.
o.window({ tag = "default-opacity" }, { opacity = "0.93 0.84" })

-- Terminals and GTK apps already dim through their own 0.93 background alpha
-- (ghostty.conf, foot.ini, gtk.css), like the shell overlays. Unfocused they drop by 0.9 (0.93 x 0.9 ≈ 0.84).
o.window("^(com\\.mitchellh\\.ghostty|foot|footclient|org\\.gnome\\..*|org\\.pulseaudio\\.pavucontrol)$", { opacity = "1 0.9" })
