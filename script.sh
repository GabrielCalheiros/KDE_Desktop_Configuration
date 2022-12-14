#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

sudo pacman -Syu                                   #Updating repositorys
sudo pacman -S --needed --noconfirm base-devel git # Install git
git clone https://aur.archlinux.org/yay-git.git    # Clone the YAY AUR HELPER archive
sudo mv yay-git /opt/                              # Moving files to the opt directory
cd /opt/yay-git || exit                            # Going to the correct folder to install YAY
sudo makepkg -si                                   # Build the YAY package using the makepkg command.

#Installing the software

    # Editing ->
    sudo pacman -S Audacity	        # Audacity - Audio Editor
    sudo pamac install natron	    # Natron - Special Effects
    sudo pamac install kdenlive     # Kdenlive - Video Editor

    # Graphics ->
    sudo pamac install gimp         # Gimp - Image Editor
    sudo pamac install blender      # Blender - 3d Modeling
    sudo pamac install inkscape     # Inkscape - Vector Graphics Editor
    sudo pamac install scribus      # Scribus - Page Layout Program
    # find a good build of darktable, not putting snap here
                                    # DIA - only found snap untill now
    # Dev ->
    sudo pacman -Syu code           # VScode - IDE/text editor
    sudo pacman -S mysql-workbench	# MySQL Workbench - database
    sudo pacman -S mc               # Midnight Commander

    # Midia ->
    #use mpv instead of vlc
    sudo pamac install vlc          # VLC - Media Player
    sudo pamac install audacious    # Audacious - Media Player
                                    # Find Another podcast player beacuse cpod is only on github and snap
                                    # Find a way to install in Stremio        
    # Office ->
    yay -S onlyoffice-bin           # OnlyOffice - office suite
                                    # Check the plugins for it
    sudo pamac install calibre      # Calibre - Ebook management application
        
    # Social ->
    Fluent Reader
    sudo pamac install quiterss     # QuiteRSS - Leitor de RSS
    sudo pacman -S signal-desktop   # Signal - XMPP Messager
    sudo pacman -S discord          # Discord - All-in-one voice and text chat
    pamac install telegram-desktop  # Telegram - Instant Messaging
                                    # Search how to install telegram Themes with terminal

    Thunderbird - Email reader

    #Other ->
    pamac install monero-gui        # Monero - wallet for Monero
    yay -S brave-bin                # Brave - Web Browser


        

    #Whisker Menu Configuration
    #Panel Configuration
    #Edit Grub
    #Edit Greeting Screen
    #Install Theme
    #Instal Fonts
    #Istall Icons

