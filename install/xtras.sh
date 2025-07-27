#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator \
    obsidian-bin libreoffice \
    localsend-bin

  yay -S --noconfirm --needed pinta ||
    echo -e "\e[31mFailed to install Pinta. Continuing without!\e[0m"

  yay -S --noconfirm --needed spotify ||
    echo -e "\e[31mFailed to install Spotify,  because of a keyserver problem. Continuing without!\e[0m"
fi

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-refresh-applications || true
