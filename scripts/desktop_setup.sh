#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

sudo pacman -Syu # Updating repositorys

# Installing the software ################################################################################

# System Stuff ###########################################################################################
sudo pacman -S --noconfirm htop                # Htop - System Monitor
sudo pacman -S --noconfirm neofetch            # Neofetch - System Information
sudo pacman -S --noconfirm syncthing           # syncthing
sudo pacman -S --noconfirm yay                 # An AUR helper to simplify installing AUR packages
# Docs ###################################################################################################
sudo pacman -S --noconfirm manjaro-starter     # Manjaro Starter
# Editing ################################################################################################
sudo pacman -S --noconfirm install Audacity	   # Audacity - Audio Editor
sudo pacman -S --noconfirm natron	           # Natron - Special Effects
sudo pacman -S --noconfirm kdenlive            # Kdenlive - Video Editor
sudo pacman -S --noconfirm texlive-*           # TeX Live - Text Editor and Latex
# Graphics ###############################################################################################      
sudo pacman -S --noconfirm gimp                # Gimp - Image Editor
sudo pacman -S --noconfirm blender             # Blender - 3d Modeling
sudo pacman -S --noconfirm inkscape            # Inkscape - Vector Graphics Editor
sudo pacman -S --noconfirm scribus             # Scribus - Page Layout Program
sudo pacman -S --noconfirm darktable-git       # Darktable - Photo Editor
sudo pacman -S --noconfirm drawio-desktop-bin  # Draw.io - Diagram Editor
sudo pacman -S --noconfirm dia                 # Dia - Diagram Editor
# Dev ####################################################################################################                      
sudo pacman -S --noconfirm code                # VScodium - IDE/text editor
sudo pacman -S --noconfirm mysql-workbench	   # MySQL Workbench - database
sudo pacman -S --noconfirm mc                  # Midnight Commander
# Fillezilla
# DBeaver
# VScodium
# Export the list of installed extensions
# code --list-extensions | xargs -L 1 echo code --install-extension
# Midia ##################################################################################################          
sudo pacman -S --noconfirm stremio             # Stremio - Media Player
sudo pacman -S --noconfirm pimpmystremio-bin   # Local add-on manager for Stremio
sudo pacman -S --noconfirm vlc                 # VLC - Media Player
sudo pacman -S --noconfirm audacious           # Audacious - Media Player
# Office #################################################################################################
sudo pacman -S --noconfirm onlyoffice-bin      # OnlyOffice - office suite # Check the plugins for OnlyOffice
sudo pacman -S --noconfirm calibre             # Calibre - Ebook management application
# Social #################################################################################################
sudo pacman -S --noconfirm signal-desktop      # Signal - XMPP Messager
sudo pacman -S --noconfirm discord             # Discord - All-in-one voice and text chat
sudo pacman -S --noconfirm telegram-desktop    # Telegram - Instant Messaging # Search how to install telegram Themes
# Other ##################################################################################################
sudo pacman -S --noconfirm monero-gui          # Monero - wallet for Monero
sudo pacman -S --noconfirm brave-bin           # Brave - Web Browser
sudo pacman -S --noconfirm betterbird-bin      # Thunderbird Email Reader but better
# Feeds ##################################################################################################
sudo pacman -S --noconfirm fluent-reader-bin   # Fluent Reader - RSS Reader
sudo pacman -S --noconfirm quiterss            # QuiteRSS - RSS Reader (For General Porpuse)
sudo pacman -S --noconfirm transmission-gtk3   # Transmission - Torrent Client
##########################################################################################################


# QGIS
# NextCloud

# Installing Plasma Widgets

# Installing KDE Apperence Packages
    # Global Theme
    # Plasma Themes
    # Icons
    # Cursor
    # GTK3
    # Window Decorations
    # Kwin Scripts
    # https://alternativeto.net/software/unetbootin/about/

# Whisker Menu Configuration
# Panel Configuration
# Edit Grub
# Edit Greeting Screen
# Install Theme
# Instal Fonts
# Istall Icons

# Find Another podcast player beacuse cpod is only on github and snap
# Use mpv instead of vlc

