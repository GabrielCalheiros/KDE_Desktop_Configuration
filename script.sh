#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

sudo pacman -Syu # Updating repositorys

# Installing the software ################################################################################


# Docs ###################################################################################################
sudo pacman -S manjaro-starter
# Editing ################################################################################################
sudo pacman -S install Audacity	   # Audacity - Audio Editor
sudo pacman -S natron	           # Natron - Special Effects
sudo pacman -S kdenlive            # Kdenlive - Video Editor
sudo pacman -S texlive-*           # TeX Live - Text Editor and Latex
# Graphics ###############################################################################################      
sudo pacman -S gimp                # Gimp - Image Editor
sudo pacman -S blender             # Blender - 3d Modeling
sudo pacman -S inkscape            # Inkscape - Vector Graphics Editor
sudo pacman -S scribus             # Scribus - Page Layout Program
sudo pacman -S darktable-git       # Darktable - Photo Editor
sudo pacman -S drawio-desktop-bin  # Draw.io - Diagram Editor
sudo pacman -S dia                 # Dia - Diagram Editor
# Dev ####################################################################################################                      
sudo pacman -S code                # VScode - IDE/text editor
sudo pacman -S mysql-workbench	   # MySQL Workbench - database
sudo pacman -S mc                  # Midnight Commander
# Midia ##################################################################################################          
sudo pacman -S stremio             # Stremio - Media Player
sudo pacman -S pimpmystremio-bin   # Local add-on manager for Stremio
sudo pacman -S vlc                 # VLC - Media Player
sudo pacman -S audacious           # Audacious - Media Player
# Office #################################################################################################
sudo pacman -S onlyoffice-bin      # OnlyOffice - office suite # Check the plugins for OnlyOffice
sudo pacman -S calibre             # Calibre - Ebook management application
# Social #################################################################################################
sudo pacman -S signal-desktop      # Signal - XMPP Messager
sudo pacman -S discord             # Discord - All-in-one voice and text chat
sudo pacman -S telegram-desktop    # Telegram - Instant Messaging # Search how to install telegram Themes
# Other ##################################################################################################
sudo pacman -S monero-gui          # Monero - wallet for Monero
sudo pacman -S brave-bin           # Brave - Web Browser
sudo pacman -S betterbird-bin      # Thunderbird Email Reader but better
# Feeds ##################################################################################################
sudo pacman -S fluent-reader-bin   # Fluent Reader - RSS Reader
sudo pacman -S quiterss            # QuiteRSS - RSS Reader (For General Porpuse)
sudo pacman -S transmission-gtk3   # Transmission - Torrent Client
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

