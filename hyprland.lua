-- Atomic Solution v2: Kinetic Hologram Console
-- 4-stop rotating plasma loop, 22px photon bloom glow, and cyberSnap (popin 90%) kinetic window pop.

local active_border_color = {
  colors = { "rgba(2fd3c9ee)", "rgba(5cebe2ee)", "rgba(f0feffee)", "rgba(2fd3c9ee)" },
  angle = 45,
}
local inactive_border_color = "rgba(10191cee)"
local shadow_color = "rgba(47d7cd45)" -- Soft omnidirectional photon bloom

-- Cybernetic Beziers
hl.curve("cyberSnap",  { type = "bezier", points = { { 0.05, 0.90 }, { 0.10, 1.02 } } }) -- Instant punch + micro-settle
hl.curve("cyberDecel", { type = "bezier", points = { { 0.16, 1.00 }, { 0.30, 1.00 } } }) -- Clean exponential decel
hl.curve("pulseRot",   { type = "bezier", points = { { 0.00, 0.00 }, { 1.00, 1.00 } } }) -- Constant velocity rotation

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    gaps_in = 3,
    gaps_out = 5,
    border_size = 2,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 8,
    shadow = {
      enabled = true,
      range = 22,
      render_power = 4,
      color = shadow_color,
      color_inactive = "rgba(00000088)",
      offset = "0 0",
    },
  },

  misc = {
    background_color = "rgb(040708)",
  },
})

-- Dynamic Animations
hl.animation({ leaf = "borderangle", enabled = true, speed = 24,  bezier = "pulseRot",   style = "loop" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3.6, bezier = "cyberSnap",  style = "popin 90%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 2.0, bezier = "cyberDecel", style = "popin 92%" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 2.2, bezier = "cyberDecel" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 1.8, bezier = "cyberDecel" })

-- Opacity hierarchy: 0.96 active window focus for maximum crispness, 0.88 inactive
o.window({ tag = "default-opacity" }, { opacity = "0.96 0.88" })

-- Skinned terminals and GTK apps dim through background alpha
o.window("^(com\\.mitchellh\\.ghostty|foot|footclient|org\\.gnome\\..*|org\\.pulseaudio\\.pavucontrol)$", { opacity = "1 0.9" })
