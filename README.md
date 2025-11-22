# Bitaxe Conky Widget

A minimal and clean **Conky widget** for the **Bitaxe Gamma or NerdQaxe miner** (compatible with all miners using AxeOS version 2.10.1 and earlier ). It displays key mining statistics in a readable table format on your Linux desktop.

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
1. Install Conky and jq (if not already installed):

   ```bash
   sudo apt update
   sudo apt install conky-all
   sudo apt install jq

   
1. **Change the API IP address or endpoint with your IP** in `bitaxe.sh`:

   ```bash
   API_URL="http://192.168.X.X/api/system/info"
  2. Copy bitaxe.conf and bitaxe.sh to your Conky configuration folder:
      ```bash
     git clone https://github.com/HamdiUT/AxeOS-conky-widget-linux ~/.config/conky/


5. Make the script executable:
  
   ```bash
   chmod +x ~/.config/conky/bitaxe.sh


7. Launch Conky manually with the configuration:
   ```bash
    conky -c ~/.config/conky/bitaxe.conf


## Start Conky Automatically at Login (via Desktop Entry)

1. Create the autostart folder if it does not exist:
    ```bash
   mkdir -p ~/.config/autostart

4. Create a `.desktop` file for Conky:
    ```bash
   nano ~/.config/autostart/bitaxe-conky.desktop

   
7. Add the following content, replacing `USERNAME` with your Linux username:

     ```bash

   [Desktop Entry]
   Type=Application
   Exec=conky -c /home/USERNAME/.config/conky/bitaxe.conf
   Hidden=false
   NoDisplay=false
   X-GNOME-Autostart-enabled=true
   Name=Bitaxe Conky Widget
   Comment=Start Bitaxe Conky widget at login

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








