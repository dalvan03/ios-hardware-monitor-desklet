# Reddit Post Kit — iOS Hardware & Battery Monitor Desklet

## Recommended Subreddits
- **`r/linuxmint`** *(Flair: Showcase / Customization / Spice)*
- **`r/CinnamonDE`**
- **`r/unixporn`** *(Flair: [Cinnamon] or [OC])*
- **`r/linux`**

---

## Media Files Ready to Upload (Gallery / Carousel)
Upload these images from [`reddit-media/`](file:///home/xdan/Desenvolvimento/Projetos/desklets/reddit-media) as an **Image Gallery** on Reddit:
1. [`01-live-desktop-dark.png`](file:///home/xdan/Desenvolvimento/Projetos/desklets/reddit-media/01-live-desktop-dark.png) — *Live screenshot on Cinnamon Desktop (Dark Glass Mode)*
2. [`04-dark-vs-light-comparison.png`](file:///home/xdan/Desenvolvimento/Projetos/desklets/reddit-media/04-dark-vs-light-comparison.png) — *Side-by-side comparison: macOS Dark Glass vs. iOS Light Frosted*
3. [`02-bluetooth-ecosystem-dark.png`](file:///home/xdan/Desenvolvimento/Projetos/desklets/reddit-media/02-bluetooth-ecosystem-dark.png) — *Close-up showcasing multi-device Bluetooth battery rings (Headphones, Mouse, DualSense Controller, Laptop)*
4. [`03-light-frosted-theme.png`](file:///home/xdan/Desenvolvimento/Projetos/desklets/reddit-media/03-light-frosted-theme.png) — *Close-up of the Light Frosted theme*

---

## Title Options (Pick One)

- **Option 1 (Best for `r/linuxmint` & `r/CinnamonDE`):**
  > `[OC] I built an All-in-One Hardware + Bluetooth Battery Monitor Desklet for Cinnamon (iOS / macOS Sonoma style)`

- **Option 2 (Short & Punchy):**
  > `I made an iOS/macOS-inspired Hardware & Bluetooth Battery Monitor Desklet for Linux Mint / Cinnamon!`

---

## Post Body / First Comment (Copy & Paste)

```markdown
Hey everyone!

I wanted a single, clean desktop widget on Cinnamon that could show both my **system hardware metrics** (CPU, RAM, GPU, Fan RPM, Disk, Network) and **all my connected Bluetooth device batteries** in the style of the iOS / macOS Sonoma Batteries & Activity widgets — so I built **iOS Hardware & Battery Monitor** (`ios-hardware-monitor@dalvan`).

### ✨ Features
* **100% Native & Asynchronous (Zero extra dependencies):** Drawn entirely with vector graphics (`Cairo` + `PangoCairo`) and non-blocking async `Gio` calls so it never stutters the Cinnamon main loop.
* **Hardware Circular Gauges:**
  * **CPU:** Usage `%` + package temperature (`k10temp`, `coretemp`, `zenpower`, `acpitz`).
  * **RAM:** Usage `%` and `GB` used/total.
  * **GPU (NVIDIA / AMD / Intel):** Usage `%`, temperature, and VRAM via native Linux DRM `sysfs` (`gpu_busy_percent`) or async `nvidia-smi`.
  * **Cooler / Fan RPM:** Auto-detects `fan*_input` sensors in `/sys/class/hwmon`.
* **Storage & Live Network Cards:**
  * **Disk:** Progress bar with `%` used and free `GB`.
  * **Network:** Live Download (`↓`) and Upload (`↑`) speed on the active interface.
* **iOS-Style Batteries & Bluetooth Monitor:**
  * Combines **UPower (`UPowerGlib`)** and **BlueZ D-Bus (`org.bluez.Battery1`)** to display your laptop battery alongside connected Bluetooth headphones, speakers, mice, keyboards, and controllers.
  * Custom vector icons for each device type + lightning bolt charging badge and traffic-light battery colors (Green / Yellow ≤ 25% / Red ≤ 15%).
* **Highly Customizable:**
  * Switch between **Dark Glass (macOS Dark)**, **Light Frosted (iOS Light)**, or **Auto** theme.
  * Customize glass opacity, corner radius, widget scale (`0.75x` – `1.6x`), grid columns, module visibility, and header title (Hardware Model, Distro name, Hostname, Username, or Custom text).

---

### 🚀 How to Install

I've already submitted it to the official **Cinnamon Spices** repository ([PR #1933](https://github.com/linuxmint/cinnamon-spices-desklets/pull/1933)), and you can also install it right now from GitHub in one command:

```bash
git clone https://github.com/dalvan03/ios-hardware-monitor-desklet.git
cd ios-hardware-monitor-desklet
./install.sh
```

Then right-click your desktop -> **Add Desklets** -> enable **iOS Hardware & Battery Monitor**.

* 🔗 **GitHub Repository:** https://github.com/dalvan03/ios-hardware-monitor-desklet
* 🔗 **Cinnamon Spices PR:** https://github.com/linuxmint/cinnamon-spices-desklets/pull/1933

Feedback, bug reports, and feature ideas from the community are super welcome!
```
