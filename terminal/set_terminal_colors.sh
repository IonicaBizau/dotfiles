#!/bin/bash

# Save this script into set_colors.sh, make this file executable and run it:
#
# $ chmod +x set_colors.sh
# $ ./set_colors.sh
#
# Alternatively copy lines below directly into your shell.

gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_theme_background --type bool false
gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_theme_colors --type bool false
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color '#0d0d19192626'
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color '#d9d9e6e6f2f2'
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette '#000000000000:#b8b890907a7a:#7a7ab8b89090:#a2a2b8b87a7a:#90907a7ab8b8:#b8b87a7aa2a2:#7a7aa2a2b8b8:#d9d9d9d9d9d9:#262626262626:#dbdbc7c7bdbd:#bdbddbdbc7c7:#d1d1dbdbbdbd:#c7c7bdbddbdb:#dbdbbdbdd1d1:#bdbdd1d1dbdb:#ffffffffffff'
