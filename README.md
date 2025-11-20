# Bitaxe Conky Widget

A minimal and clean **Conky widget** for the **Bitaxe Gamma miner**. It displays key mining statistics in a readable table format on your Linux desktop.

## Features

- Display **Hash Rate (H/s)**
- Display **Power (W)**
- Display **Temperature (°C)**
- Display **Best Difficulty**
- Display **Best Session Difficulty**
- Display **Uptime** (days, hours, minutes, seconds)
- Display **Fan Speed (RPM)**
- Semi-transparent background

## Screenshot

![Screenshot](https://github.com/user-attachments/assets/3275edbb-3686-4a11-8fbd-89f9e5378188)

## Installation

1. **Change the API IP address or endpoint** in `bitaxe.sh`:

   ```bash
   API_URL="http://192.168.X.X/api/system/info"
  2. Copy the files to your Conky configuration folder: ~/.config/conky/


3. Make the script executable: chmod +x ~/.config/conky/bitaxe.sh


4. Launch Conky manually with the configuration: conky -c ~/.config/conky/bitaxe.conf


## Start Conky Automatically at Login (via Desktop Entry)

1. Create the autostart folder if it does not exist: mkdir -p ~/.config/autostart

2. Create a `.desktop` file for Conky: nano ~/.config/autostart/bitaxe-conky.desktop

   
3. Add the following content, replacing `USERNAME` with your Linux username:


`[Desktop Entry]
Type=Application
Exec=conky -c /home/USERNAME/.config/conky/bitaxe.conf
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Bitaxe Conky Widget
Comment=Start Bitaxe Conky widget at login`

4. Save and close the file (Ctrl+O, Enter, Ctrl+X). **Conky will now start automatically at login.**


## Requirements

Linux with X11/Xorg (Debian, Ubuntu, Fedora, Arch, etc.)

Conky (version ≥ 1.10 recommended)

Bash (default on Linux)

curl (for fetching API data)

jq (for parsing JSON)

Composite manager (optional, for semi-transparent background, e.g., picom or compton)

Compatibility Notes

Works best on X11 environments

On Wayland, transparency may not work without XWayland

Not compatible with macOS or native Windows


License

### MIT License – feel free to use, modify, and distribute.








