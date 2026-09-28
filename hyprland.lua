-- Atomic Solution v2: Minimal Precision Console (Zero Glow)
-- Pure razor cyan border gradient, zero drop shadow/glow, tight 4/6px gaps, and calmSmooth glide.

local active_border_color = {
  colors = { "rgba(2fd3c9ee)", "rgba(5cebe2ee)", "rgba(e2feffee)", "rgba(2fd3c9ee)" },
  angle = 45,
}
local inactive_border_color = "rgba(141f24ee)"

-- Cybernetic Beziers: buttery smooth organic deceleration, zero bounce/overshoot
hl.curve("calmSmooth", { type = "bezier", points = { { 0.22, 1.00 }, { 0.36, 1.00 } } }) -- Silky exponential glide
hl.curve("pulseRot",   { type = "bezier", points = { { 0.00, 0.00 }, { 1.00, 1.00 } } }) -- Constant velocity rotation

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
    rounding = 6,
    shadow = {
      enabled = false,
    },
  },

  misc = {
    background_color = "rgb(040708)",
  },
})

-- Dynamic Animations: less movement (popin 97%), slower (450ms), buttery smooth
hl.animation({ leaf = "borderangle", enabled = true, speed = 36,  bezier = "pulseRot",   style = "loop" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 4.5, bezier = "calmSmooth", style = "popin 97%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3.2, bezier = "calmSmooth", style = "popin 98%" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 3.5, bezier = "calmSmooth" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 2.8, bezier = "calmSmooth" })

if o and o.window then
  -- Opacity hierarchy: 0.96 active window focus for maximum crispness, 0.88 inactive
  o.window({ tag = "default-opacity" }, { opacity = "0.96 0.88" })

  -- Skinned terminals and GTK apps dim through background alpha
  o.window("^(com\\.mitchellh\\.ghostty|foot|footclient|org\\.gnome\\..*|org\\.pulseaudio\\.pavucontrol)$", { opacity = "1 0.9" })
end
