# iOS Hardware & Battery Monitor (`ios-hardware-monitor@dalvan`)

An **All-in-One Hardware & Bluetooth Battery Monitor** desklet for Linux Mint / Cinnamon, featuring circular gauges, squircle cards, and glassmorphic design inspired by **iOS and macOS Sonoma** widgets.

![Preview](ios-hardware-monitor@dalvan/screenshot.png)

## Key Features

- **Real-Time Hardware Circular Gauges (Zero External Dependencies)**:
  - **CPU**: Usage percentage (`/proc/stat`) and package temperature via `hwmon` (`k10temp`, `coretemp`, `zenpower`, `acpitz`).
  - **RAM & Swap**: Usage percentage and consumed GB (`/proc/meminfo`).
  - **GPU (NVIDIA / AMD / Intel)**: Usage percentage, temperature, and VRAM via native Linux DRM `sysfs` (`gpu_busy_percent`) for AMD/Intel or non-blocking async `nvidia-smi` for NVIDIA GPUs.
  - **Cooler / Fan RPM**: Automatic detection of fan speed sensors (`fan*_input` in `/sys/class/hwmon`) displayed in RPM / `k`.
- **Compact Storage & Network Cards**:
  - **Disk**: Horizontal progress bar with used percentage and free/total GB (`Gio.File.query_filesystem_info`).
  - **Network**: Live Download (`↓`) and Upload (`↑`) throughput on the active network interface (`/proc/net/dev`).
- **Batteries & Bluetooth Monitor (iOS Batteries Style)**:
  - Native integration via **UPower (`UPowerGlib`)** and **BlueZ D-Bus (`org.freedesktop.DBus.ObjectManager` / `org.bluez.Battery1`)**.
  - Custom Cairo vector icons for Laptop, Bluetooth Headphones/AirPods, Speakers, Mice, Keyboards, Gamepads, and Phones, plus a charging lightning bolt badge.
  - Smart iOS traffic-light color coding (Green `#30D158`, Yellow `#FFD60A` ≤ 25%, Red `#FF453A` ≤ 15%).
- **Full Customization (Native Cinnamon Settings)**:
  - **Dark Glass (macOS Dark)**, **Light Frosted (iOS Light)**, and **Auto (System Theme)** modes.
  - Configurable background opacity, corner radius, widget scale (`0.75x` to `1.6x`), grid columns per row, header title mode (Device Model, Distro, Hostname, User, or Custom Text), and individual module toggles.

## Quick Installation

### Standard Installation
```bash
git clone https://github.com/dalvan03/ios-hardware-monitor-desklet.git
cd ios-hardware-monitor-desklet
./install.sh
```

### Development Mode (Symlink to `~/.local/share/cinnamon/desklets`)
```bash
./install.sh --symlink
```

After installing:
1. Right-click on your desktop and select **Add Desklets**.
2. Select **iOS Hardware & Battery Monitor** and click the **`+`** button.

## Project Structure

- [`ios-hardware-monitor@dalvan/desklet.js`](ios-hardware-monitor@dalvan/desklet.js): Telemetry engine and Cairo/Pango vector rendering.
- [`ios-hardware-monitor@dalvan/settings-schema.json`](ios-hardware-monitor@dalvan/settings-schema.json): Cinnamon Desklet configuration schema.
- [`ios-hardware-monitor@dalvan/metadata.json`](ios-hardware-monitor@dalvan/metadata.json): Desklet manifest.
- [`ios-hardware-monitor@dalvan/icon.png`](ios-hardware-monitor@dalvan/icon.png): Desklet icon.

## License

Released under the **GPL-3.0** license.
