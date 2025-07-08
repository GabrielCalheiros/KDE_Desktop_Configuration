#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

echo $pass | sudo -S pacman -Syyuu --noconfirm # Updating repositorys

# Leafpad 
# Galculator
# SMPlayer
# KolourPaint 
# cmatrix
# install Penpot

# System Stuff ############################################################################################################################
sudo pacman -S --noconfirm htop                            # Htop - System Monitor
sudo pacman -S --noconfirm neofetch                        # Neofetch - System Information
sudo pacman -S --noconfirm syncthing                       # syncthing
sudo pacman -S --noconfirm yay                             # An AUR helper to simplify installing AUR packages
sudo pacman -S --noconfirm bleachbit                       # Bleachbit - System Cleaner
sudo pacman -S --noconfirm gnome-disk-utility              # gnome-disk-utility
sudo pacman -S --noconfirm baobab                          # baobab
# Docs ####################################################################################################################################
sudo pacman -S --noconfirm manjaro-starter                 # Manjaro Starter
# Editing #################################################################################################################################
sudo pacman -S --noconfirm install Audacity	               # Audacity - Audio Editor
sudo pacman -S --noconfirm natron	                       # Natron - Special Effects
sudo pacman -S --noconfirm kdenlive                        # Kdenlive - Video Editor
sudo pacman -S --noconfirm texlive-*                       # TeX Live - Text Editor and Latex
# Graphics ################################################################################################################################
sudo pacman -S --noconfirm gimp                            # Gimp - Image Editor
sudo pacman -S --noconfirm blender                         # Blender - 3d Modeling
sudo pacman -S --noconfirm inkscape                        # Inkscape - Vector Graphics Editor
sudo pacman -S --noconfirm scribus                         # Scribus - Page Layout Program
sudo pacman -S --noconfirm darktable-git                   # Darktable - Photo Editor
sudo pacman -S --noconfirm drawio-desktop-bin              # Draw.io - Diagram Editor
sudo pacman -S --noconfirm dia                             # Dia - Diagram Editor
# Dev #####################################################################################################################################
sudo pacman -S --noconfirm mysql-workbench	               # MySQL Workbench - database
sudo pacman -S --noconfirm mc                              # Midnight Commander
sudo pacman -S --noconfirm filezilla                       # Filezilla
sudo pacman -S --noconfirm dbeaver                         # Dbeaver
# VScodium # Export list extensiond from vscode | install postman gitkraken
# Midia ###################################################################################################################################
sudo pacman -S --noconfirm stremio                         # Stremio - Media Player
sudo pacman -S --noconfirm pimpmystremio-bin               # Local add-on manager for Stremio
sudo pacman -S --noconfirm vlc                             # VLC - Media Player
sudo pacman -S --noconfirm audacious                       # Audacious - Media Playerare
# Office ##################################################################################################################################
sudo pacman -S --noconfirm onlyoffice-bin                  # OnlyOffice - office suite # Check the plugins for OnlyOffice
sudo pacman -S --noconfirm calibre                         # Calibre - Ebook management application
# Social ##################################################################################################################################
sudo pacman -S --noconfirm signal-desktop                  # Signal - XMPP Messager
sudo pacman -S --noconfirm discord                         # Discord - All-in-one voice and text chat
sudo pacman -S --noconfirm telegram-desktop                # Telegram - Instant Messaging # Search how to install telegram Themes
# Other ###################################################################################################################################
sudo pacman -S --noconfirm monero-gui                      # Monero - wallet for Monero
sudo pacman -S --noconfirm brave-bin                       # Brave - Web Browser
sudo pacman -S --noconfirm betterbird-bin                  # Thunderbird Email Reader but better
# Feeds ###################################################################################################################################
sudo pacman -S --noconfirm fluent-reader-bin               # Fluent Reader - RSS Reader
sudo pacman -S --noconfirm quiterss                        # QuiteRSS - RSS Reader (For General Porpuse)
sudo pacman -S --noconfirm transmission-gtk3               # Transmission - Torrent Client
# Fonts ###################################################################################################################################
sudo pacman -S --noconfirm otf-aurulent-nerd               # Aurulent Nerd Font
sudo pacman -S --noconfirm otf-cascadia-code-nerd          # Cascadia Code Nerd Font
sudo pacman -S --noconfirm otf-codenewroman-nerd           # Code New Roman Nerd Font
sudo pacman -S --noconfirm otf-firamono-nerd               # Fira Mono Nerd Font
sudo pacman -S --noconfirm otf-droid-nerd                  # Droid Nerd Font
sudo pacman -S --noconfirm otf-hasklig-nerd                # Hasklig Nerd Font
sudo pacman -S --noconfirm otf-hermit-nerd                 # Hermit Nerd Font
sudo pacman -S --noconfirm otf-opendyslexic-nerd           # OpenDyslexic Nerd Font
sudo pacman -S --noconfirm otf-overpass-nerd               # Overpass Nerd Font
sudo pacman -S --noconfirm noto-fonts-cjk                  # Noto CJK Fonts
sudo pacman -S --noconfirm noto-fonts-emoji                # Noto Emoji
sudo pacman -S --noconfirm noto-fonts                      # Noto Fonts
sudo pacman -S --noconfirm ttf-3270-nerd                   # 3270 Nerd Font
sudo pacman -S --noconfirm ttf-agave-nerd                  # Agave Nerd Font
sudo pacman -S --noconfirm ttf-nerd-fonts-symbols-common   # Nerd Fonts Symbols
sudo pacman -S --noconfirm ttf-daddytime-mono-nerd         # Daddytime Mono Nerd Font
sudo pacman -S --noconfirm ttf-bitstream-vera-mono-nerd    # Bitstream Vera Mono Nerd Font
sudo pacman -S --noconfirm ttf-noto-nerd                   # Noto Nerd Font
sudo pacman -S --noconfirm ttf-sharetech-mono-nerd         # Sharetech Mono Nerd Font
sudo pacman -S --noconfirm ttf-mononoki-nerd               # Mononoki Nerd Font
sudo pacman -S --noconfirm ttf-anonymouspro-nerd           # Anonymous Pro Nerd Font
sudo pacman -S --noconfirm ttf-arimo-nerd                  # Arimo Nerd Font
sudo pacman -S --noconfirm ttf-bigblueterminal-nerd        # Big Blue Terminal Nerd Font
sudo pacman -S --noconfirm ttf-cousine-nerd                # Cousine Nerd Font
sudo pacman -S --noconfirm ttf-dejavu-nerd                 # Dejavu Nerd Font
sudo pacman -S --noconfirm ttf-fantasque-nerd              # Fantasque Nerd Font
sudo pacman -S --noconfirm ttf-firacode-nerd               # Fira Code Nerd Font
sudo pacman -S --noconfirm ttf-go-nerd                     # Go Nerd Font
sudo pacman -S --noconfirm ttf-victor-mono-nerd            # Victor Mono Nerd Font
sudo pacman -S --noconfirm ttf-ubuntu-nerd                 # Ubuntu Nerd Font
sudo pacman -S --noconfirm ttf-ubuntu-mono-nerd            # Ubuntu Mono Nerd Font
sudo pacman -S --noconfirm ttf-tinos-nerd                  # Tinos Nerd Font
sudo pacman -S --noconfirm ttf-terminus-nerd               # Terminus Nerd Font
sudo pacman -S --noconfirm ttf-space-mono-nerd             # Space Mono Nerd Font
sudo pacman -S --noconfirm ttf-hack-nerd                   # Hack Nerd Font
sudo pacman -S --noconfirm ttf-heavydata-nerd              # Heavydata Nerd Font
sudo pacman -S --noconfirm ttf-iawriter-nerd               # Ia Writer Nerd Font
sudo pacman -S --noconfirm ttf-ibmplex-mono-nerd           # IBM Plex Mono Nerd Font
sudo pacman -S --noconfirm ttf-inconsolata-go-nerd         # Inconsolata Go Nerd Font
sudo pacman -S --noconfirm ttf-inconsolata-lgc-nerd        # Inconsolata LGC Nerd Font
sudo pacman -S --noconfirm ttf-inconsolata-nerd            # Inconsolata Nerd Font
sudo pacman -S --noconfirm ttf-iosevka-nerd                # Iosevka Nerd Font
sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd         # JetBrains Mono Nerd Font
sudo pacman -S --noconfirm ttf-lekton-nerd                 # Lekton Nerd Font
sudo pacman -S --noconfirm ttf-liberation-mono-nerd        # Liberation Mono Nerd Font
sudo pacman -S --noconfirm ttf-lilex-nerd                  # Lilex Nerd Font
sudo pacman -S --noconfirm ttf-meslo-nerd                  # Meslo Nerd Font
sudo pacman -S --noconfirm ttf-monoid-nerd                 # Monoid Nerd Font
sudo pacman -S --noconfirm ttf-monofur-nerd                # Monofur Nerd Font
sudo pacman -S --noconfirm ttf-mplus-nerd                  # MPlus Nerd Font
sudo pacman -S --noconfirm ttf-profont-nerd                # ProFont Nerd Font
sudo pacman -S --noconfirm ttf-proggyclean-nerd            # Proggyclean Nerd Font
sudo pacman -S --noconfirm ttf-roboto-mono-nerd            # Roboto Mono Nerd Font
sudo pacman -S --noconfirm ttf-sourcecodepro-nerd          # Source Code Pro Nerd Font
###########################################################################################################################################

# QGIS
# NextCloud

# Installing Plasma Widgets
# Whisker Menu Configuration
# Panel Configuration
# Edit Grub
# Edit Greeting Screen
# Install Theme
# Instal Fonts
# Istall Icons

# Find Another podcast player beacuse cpod is only on github and snap
# Use mpv instead of vlc


# Config Files:

#     Global Theme -> .config/kdeglobals
#     Global Theme -> .config/kscreenlockerrc
#     Global Theme -> .config/kwinrc
#     Global Theme -> .config/gtkrc
#     Global Theme -> .config/gtkrc-2.0
#     Global Theme -> .config/gtk-4.0/*
#     Global Theme -> .config/gtk-3.0/*
#     Global Theme -> .config/ksplashrc
#     Colors [KDE] -> .config/kdeglobals
#     Colors [TrollTech] -> .config/Trolltech.conf
#     Application Style -> .config/kdeglobals
#     Plasma Style -> .config/plasmarc
#     Window decorations -> .config/breezerc (or your theme name) and .config/kwinrc
#     Fonts -> .config/kdeglobals and .config/kcmfonts
#     Icons -> .config/kdeglobals
#     Cursors -> .config/kcminputrc
#     Launch Feedback -> .config/klaunchrc
#     Font management -> .config/kfontinstuirc
#     Splash screen -> .config/ksplashrc