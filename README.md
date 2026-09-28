# Atomic Solution v2 (Kinetic Hologram Console) Theme for Omarchy

The next evolution of the [Atomic Solution](https://atomic-solution.com) theme for [Omarchy](https://omarchy.org).

Synthesized from bleeding-edge WebGL ion shaders and high-precision instrument consoles:
- **Kinetic Hologram Pop:** Windows glide into place smoothly via `calmSmooth` cubic-beziers (calm 450ms popin from 97% dimension with zero bounce or deceleration freeze).
- **Traveling Plasma Crest:** Continuous 4-stop active border rotation loop (`#2fd3c9` → `#5cebe2` → `#e2feff` → `#2fd3c9`).
- **Zero-Glow Minimalist Precision:** Drop shadows and bloom disabled (`shadow.enabled = false`) for razor-crisp edges and zero GPU compositing overhead.
- **Calibrated Workspace Gaps:** 4px inner gaps, 6px outer gaps, and 2px razor border for clean separation while preserving 98%+ operational desktop real estate.
- **Ion Core Fastfetch:** Custom ASCII atom core logo with system status telemetry.
- **Dedicated `btop.theme`:** Precision cybernetic telemetry curve mapping CPU, RAM, and thermals to Atomic's signal thresholds.
- **Starship Prompt Preset:** Diamond-status cybernetic terminal prompt.
- **Dual Opacity Hierarchy:** 0.96 active window focus for maximum reading crispness, 0.88 inactive windows letting space nebulae breathe.

![Atomic Solution v2 preview](preview.png)

## Install

Requires Omarchy 4 (uses `hyprland.lua` and `shell.toml`).

```bash
ln -s /home/om/Projects/omarchy-atomic-solution-v2-theme ~/.config/omarchy/themes/atomic-solution-v2
omarchy theme set atomic-solution-v2
```

Optional, for GTK apps:

```bash
omarchy hook install theme-set ~/.config/omarchy/themes/atomic-solution-v2/extras/50-gtk-css
omarchy theme set atomic-solution-v2
```

## What's included

| File | What it does |
|---|---|
| `colors.toml` | High-contrast electric cyan/teal palette with neutral slate framework |
| `hyprland.lua` | `calmSmooth` kinetic beziers, 4-stop rotating plasma loop, zero glow, 4/6px gaps, and 0.96/0.88 opacity |
| `shell.toml` | Compact 24px aerospace telemetry status rail with 11px monospace base |
| `btop.theme` | Dedicated Btop++ telemetry color curves (cyan plasma, thermal alerts) |
| `extras/fastfetch.jsonc` | Fastfetch configuration with custom Ion Core ASCII art (`extras/atomic-core.txt`) |
| `extras/starship.toml` | Starship terminal prompt preset with cyan diamond glyphs |
| `ghostty.conf`, `foot.ini` | Native terminal color schemes with 0.93 background opacity |
| `gtk.css` | GTK 3/4 and libadwaita styling at 0.93 opacity |
| `icons.theme` | `Yaru-blue-dark` |
| `backgrounds/` | 6 4K UHD public-domain deep space nebula wallpapers |
| `unlock.png`, `preview-unlock.png` | Atomic logo cut for boot-time disk unlock, SDDM, and Hyprlock |

## License

MIT License. Assets derived from Atomic Solution design system.
