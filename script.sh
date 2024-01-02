#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

sudo pacman -Syu                                   # Updating repositorys
sudo pacman -S --needed --noconfirm base-devel git # Install git

#Installing the software

    # Documentation ->
    pamac install manjaro-starter

    # Editing ->
    sudo pamac -S install Audacity	     # Audacity - Audio Editor
    sudo pamac install natron	         # Natron - Special Effects
    sudo pamac install kdenlive          # Kdenlive - Video Editor
    pamac install texlive-*              # TeX Live - Text Editor and Latex


    # Graphics ->
    sudo pamac install gimp              # Gimp - Image Editor
    sudo pamac install blender           # Blender - 3d Modeling
    sudo pamac install inkscape          # Inkscape - Vector Graphics Editor
    sudo pamac install scribus           # Scribus - Page Layout Program
    sudo pamac build darktable-git       # Darktable - Photo Editor
    sudo pamac build drawio-desktop-bin  # Draw.io - Diagram Editor
    sudo pamac install dia               # Dia - Diagram Editor

    # Dev ->
    sudo pamac -Syu code                 # VScode - IDE/text editor
    sudo pamac -S mysql-workbench	     # MySQL Workbench - database
    sudo pamac -S mc                     # Midnight Commander

    # Midia ->
    sudo pamac build stremio             # Stremio - Media Player
    sudo pamac build pimpmystremio-bin   # Local add-on manager for Stremio
    sudo pamac install vlc               # VLC - Media Player
    sudo pamac install audacious         # Audacious - Media Player
                                         # Find Another podcast player beacuse cpod is only on github and snap
                                         # Use mpv instead of vlc

    # Office ->
    pamac build -S onlyoffice-bin        # OnlyOffice - office suite
                                         # Check the plugins for OnlyOffice
    sudo pamac install calibre           # Calibre - Ebook management application
        
    # Social ->
    sudo pamac -S signal-desktop         # Signal - XMPP Messager
    sudo pamac -S discord                # Discord - All-in-one voice and text chat
    sudo pamac install telegram-desktop  # Telegram - Instant Messaging
                                         # Search how to install telegram Themes with terminal

    # Other ->
    sudo pamac install monero-gui        # Monero - wallet for Monero
    sudo pamac build -S brave-bin        # Brave - Web Browser
    sudo pamac build -S betterbird-bin   # Thunderbird Email Reader but better
        

    # FeedReading Software ->
    sudo pamac build fluent-reader-bin   # Fluent Reader - RSS Reader
    sudo pamac install quiterss          # QuiteRSS - RSS Reader (For General Porpuse)
    sudo pamac build transmission-gtk3   # Transmission - Torrent Client


    # QGIS
    # NextCloud

    # Installing Plasma Widgets

    # Installing KDE Apperence Packages
        # Look & Feel Theme
        # Cursor
        # Icons
        # GTK3
        # Window Decorations
        # Kwin Scripts


    # Whisker Menu Configuration

    # Panel Configuration

    # Edit Grub

    # Edit Greeting Screen

    # Install Theme

    # Instal Fonts
    
    # Istall Icons

