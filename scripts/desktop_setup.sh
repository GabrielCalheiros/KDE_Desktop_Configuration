#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "A Desktop configuration script for Manjaro Linux"

echo $pass | sudo -S pacman -Syyuu --noconfirm # Updating repositorys
sudo pacman -S --noconfirm yay                 # An AUR helper to simplify installing AUR packages


# Terminal Monitors #########################################################################################################################
sudo pacman -S --noconfirm htop                            # Htop - System Monitor
# bpytop                                                   # Monitor de sistema moderno  (melhor UI que htop).
# vtop                                                     # Monitor de sistema moderno  (melhor UI que htop).
# glances                                                  # Monitor de sistema completo (CPU, RAM, redes, discos).
# lm_sensors                                               # Monitoramento de temperatura e sensores.
# ncdu                                                     # Análise de uso de disco via terminal.
# nmap                                                     # Port Scanner


# Terminal Tools ############################################################################################################################
sudo pacman -S --noconfirm neofetch                        # Neofetch - System Information
# screenfetch                                              # Alternativa ao neofetch.
# iperf3                                                   # Teste de velocidade de rede 
# mtr                                                      # diagnosticar problemas de rede
# ethtool                                                  # Configurações de interface de rede.
# yt-dlp                                                   # yt-dlp - Video Downloader
# lynx                                                     # Terminal Web Browser
# lolcat                                                   # figlet + cat
# openvpn                                                  # VPN Client
# wireguard-tools                                          # WireGuard Client
# tmux                                                     # Terminal Multiplexer
# ranger                                                   # Navegador de arquivos no terminal, modo vi.
# tldr                                                     # Exemplos simples de comandos Linux.
# exa                                                      # ls aprimorado, colorido, tree view.
# bat                                                      # cat aprimorado, com syntax highlight.
# ffmpeg                                                   # FFMpeg - Video Converter
# mc                                                       # cross-platform orthodox file manager


# Terminal Games ##############################################################################################################################
# bastet                                                   # Bastet - Breakout Clone
# ninvaders                                                # ninvaders - Space Invaders
# nsnake                                                   # nsnake - Snake Clone
# moon-buggy                                               # moon-buggy - Breakout Clone
# asciiportal                                              # asciiportal - Portal Clone
# greed                                                    # greed - Breakout Clone
# Dungeon Crawl Stone Soup
# http://www.aardwolf.com/
# http://www.achaea.com/main.php
# http://www.avalon-rpg.com/
# http://discworld.atuin.net/lpc/
# http://www.middle-earth.us/
# http://www.lusternia.com/
# http://www.douglasadams.com/creations/infocomjava.html
# http://www.infocom-if.org/downloads/downloads.html
# robotfindskitten
# Nethack
# http://www.carrionfields.com


# Terminal Visual Demos & Toys ################################################################################################################
# asciiquarium                                             # ASCII Aquarium
# cmatrix                                                  # ASCII Matrix Art
# hollywood                                                # ASCII HackerLooking Art
# cacafire                                                 # ASCII Fire
# aafire                                                   # Simpler ASCII fire from the aalib package.
# bb                                                       # ASCII Famous 3D art demo with music.
# asciiview                                                # ASCII Art Viewer
# pipes.sh                                                 # ASCII Pipe Art
# pipes-c                                                  # ASCII Pipe Art
# lolcat                                                   # figlet + cat
# cowsay                                                   # Like cowsay, but with My Little Pony characters.
# figlet                                                   # Gera banners ASCII no terminal.
# nyancat                                                  # ASCII Nyancat
# cbonsai                                                  # ASCII bonsai


# Network an Internet ############################################################################################################################
# Pidgin                                                   # Jabber Client
# Lynx                                                     # text-mode web browser, supports the Gopher protocol
# Thunderbird                                              # Thunderbird - Email Client
sudo pacman -S --noconfirm syncthing                       # syncthing
# transmission                                             # Transmission - Torrent Client
# postman                                                  # API Testing
# gitkraken                                                # Git Client
# torbrowser-launcher                                      # Tor Browser
# brave-bin                                                # Brave Browser
# NextCloud
# Librewolf                                                # Web Browser
# Brave Browser                                            # Web Browser
    # https://github.com/arkenfox/user.js/blob/master/user.js
    # uBlock Origin
    # Decentraleyes
    # VimVixen
    # I still don't care about cookies
    # Stylus
# TeamSpeak
# Discord
# Whatsapp
# Signal
# Telegram


# System Tools ############################################################################################################################
sudo pacman -S --noconfirm bleachbit                       # Bleachbit - System Cleaner
sudo pacman -S --noconfirm gnome-disk-utility              # gnome-disk-utility
sudo pacman -S --noconfirm baobab                          # baobab
# Galculator                                               # Calculator
# HandBrake                                                # HandBrake - Video Converter


# Editing #################################################################################################################################
sudo pacman -S --noconfirm install Audacity	               # Audacity - Audio Editor
# Sneedacity                                               # a replacement to Audacity which now includes telemetry
sudo pacman -S --noconfirm natron	                       # Natron - Special Effects
sudo pacman -S --noconfirm kdenlive                        # Kdenlive - Video Editor
sudo pacman -S --noconfirm texlive-*                       # TeX Live - Text Editor and Latex
# Leafpad                                                  # Text Editor
# LMMS                                                     # LMMS - Music Editor
# Rosegarden                                               # Rosegarden - Music Editor


# Graphics ################################################################################################################################
sudo pacman -S --noconfirm gimp                            # Gimp - Image Editor
sudo pacman -S --noconfirm blender                         # Blender - 3d Modeling
sudo pacman -S --noconfirm inkscape                        # Inkscape - Vector Graphics Editor
sudo pacman -S --noconfirm scribus                         # Scribus - Page Layout Program
sudo pacman -S --noconfirm darktable-git                   # Darktable - Photo Editor
sudo pacman -S --noconfirm drawio-desktop-bin              # Draw.io - Diagram Editor
sudo pacman -S --noconfirm dia                             # Dia - Diagram Editor
# KolourPaint                                              # Paint Program
# Penpot                                                   # Canva's Like Program
# krita                                                    # Krita - Paint Program
# mypaint                                                  # MyPaint - Paint Program
# fontforge                                                # Font Editor
# QGIS


# Dev #####################################################################################################################################
sudo pacman -S --noconfirm mysql-workbench	               # MySQL Workbench - database
sudo pacman -S --noconfirm mc                              # Midnight Commander
sudo pacman -S --noconfirm filezilla                       # Filezilla
sudo pacman -S --noconfirm dbeaver                         # Dbeaver
# localstack                                               # Simulador local de AWS services.
# VScodium                                                 # Visual Studio Code
# Export list extensiond from vscode


# Midia ###################################################################################################################################
sudo pacman -S --noconfirm stremio                         # Stremio - Media Player
sudo pacman -S --noconfirm pimpmystremio-bin               # Local add-on manager for Stremio
sudo pacman -S --noconfirm vlc                             # VLC - Media Player
sudo pacman -S --noconfirm audacious                       # Audacious - Media Playerare
# Lollypop                                                 # Lollypop - Music Player
# cpod                                                     # Podcast Player
# mpv                                                      # mpv - Media Player
# handbrake                                                # Handbrake - Video Converter
# obs-studio                                               # OBS Studio - Video Recorder
# yt-dlp                                                   # yt-dlp - Video Downloader
# gpodder                                                  # gpodder - Podcast Player
# clementine                                               # Clementine - Player de música
# okular                                                   # Okular - PDF Reader
# pdfarranger                                              # PDF Manager
# xournalpp                                                # note-taking software
# cherrytree                                               # Notas hierárquicas com syntax highlight.
# zim                                                      # Wiki desktop local.


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


# Installing Plasma Widgets
# Whisker Menu Configuration
# Panel Configuration
# Edit Grub
# Edit Greeting Screen
# Install Theme
# Instal Fonts
# Istall Icons


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


