#!/bin/bash
##Run default apps

script_dir=~/.config/sway/scripts

swaymsg "workspace number 2"
$script_dir/sway-toolwait --nocheck --waitfor obsidian -- flatpak run --env=OBSIDIAN_USE_WAYLAND=1 md.obsidian.Obsidian

swaymsg "workspace number 3"
$script_dir/sway-toolwait --nocheck -- chromium --app=https://mail.proton.me

# exec ~/.config/sway/layout
# exec swaymsg "workspace 1; exec brave-browser"
# exec alacritty"
# exec alacritty -e lazysql"
# sleep
# exec swaymsg "workspace 2; exec chromium-browser --app=https://mail.proton.me"
# exec chromium-browser --app=https://calendar.google.com"
# exec chromium-browser --app=https://outlook.cloud.microsoft"
# exec chromium-browser --app=https://outlook.cloud.microsoft"
# exec chromium-browser --app=https://teams.cloud.microsoft"
#
# exec swaymsg "workspace 3; exec flatpak run md.obsidian.Obsidian"
#
#
# exec chromium-browser --app=https://mail.proton.me
# exec chromium-browser --app=https://mail.google.com
# exec chromium-browser --app=https://outlook.cloud.microsoft
# exec chromium-browser --app=https://teams.cloud.microsoft
#
