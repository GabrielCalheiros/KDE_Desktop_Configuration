#!/bin/bash
# A Desktop configuration script (manjaro linux)
echo "             __  __            _                 _ _     _     _____           _        _ _       _   _                _____           _       _   ";
echo "     /\\     |  \\/  |          (_)               | (_)   | |   |_   _|         | |      | | |     | | (_)              / ____|         (_)     | |  ";
echo "    /  \\    | \\  / | __ ___  ___ _ __ ___   __ _| |_ ___| |_    | |  _ __  ___| |_ __ _| | | __ _| |_ _  ___  _ __   | (___   ___ _ __ _ _ __ | |_ ";
echo "   / /\\ \\   | |\\/| |/ _\` \\ \\/ / | '_ \` _ \\ / _\` | | / __| __|   | | | '_ \\/ __| __/ _\` | | |/ _\` | __| |/ _ \\| '_ \\   \\___ \\ / __| '__| | '_ \\| __|";
echo "  / ____ \\  | |  | | (_| |>  <| | | | | | | (_| | | \\__ \\ |_   _| |_| | | \\__ \\ || (_| | | | (_| | |_| | (_) | | | |  ____) | (__| |  | | |_) | |_ ";
echo " /_/    \\_\\ |_|  |_|\\__,_/_/\\_\\_|_| |_| |_|\\__,_|_|_|___/\\__| |_____|_| |_|___/\\__\\__,_|_|_|\\__,_|\\__|_|\\___/|_| |_| |_____/ \\___|_|  |_| .__/ \\__|";
echo "                                                                                                                                        | |        ";
echo "                                                                                                                                        |_|        ";

sudo pacman -Syu --noconfirm
yay -Syu --noconfirm

# --- Colors ------------------------------------------------------------------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
RESET='\033[0m'

# --- Variables ---------------------------------------------------------------
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
INSTALL_LOG="$SCRIPT_DIR/install.log"
FAILED_LOG="$SCRIPT_DIR/failed.log"
> "$INSTALL_LOG"
> "$FAILED_LOG"

# --- Package Installer -------------------------------------------------------
install_pkg() {
    local pkg="$1"
    echo -e "${BLUE}Installing:${RESET} $pkg ..."
    
    # Capture both output and exit code properly
    output_file=$(mktemp)
    if yay -S --noconfirm --needed "$pkg" 2>&1 | tee -a "$INSTALL_LOG" | tee "$output_file"; then
        # yay exited successfully — now check for “not found” messages
        if grep -qiE "nenhum pacote|não encontrado|error|failed|not found" "$output_file"; then
            echo -e "${RED}❌ Failed:${RESET} $pkg"
            echo "$pkg" >> "$FAILED_LOG"
        else
            echo -e "${GREEN}✅ Installed:${RESET} $pkg"
        fi
    else
        # yay command failed
        echo -e "${RED}❌ Failed:${RESET} $pkg"
        echo "$pkg" >> "$FAILED_LOG"
    fi
    rm -f "$output_file"
}

# --- Category Installer ------------------------------------------------------
install_category() {
    local category_name="$1[@]"
    local category_title="$2"

    echo
    echo -e "${BOLD}==================================================================${RESET}"
    echo -e "${YELLOW}>>> Installing $category_title...${RESET}"
    echo -e "${BOLD}==================================================================${RESET}"

    for entry in "${!category_name}"; do
        pkg=$(echo "$entry" | awk '{print $1}')
        desc=$(echo "$entry" | cut -d'#' -f2-)
        echo
        echo -e "${BOLD}📦 $pkg${RESET} —${desc}"
        install_pkg "$pkg"
    done
}

#🎬 Media ###################################################################################################################################
media=(
   # "stremio                # Stremio - Media Player"
   "pimpmystremio-bin      # Local add-on manager for Stremio"
   "vlc-gui-qt             # VLC - Media Player"
   "audacious              # Audacious - Media Playerare"
   "lollypop               # Lollypop - Music Player"
   "cpod-appimage          # Podcast Player"
   "mpv                    # mpv - Media Player"
   "handbrake              # Handbrake - Video Converter"
   "obs-studio             # OBS Studio - Video Recorder"
   "yt-dlp                 # yt-dlp - Video Downloader"
   "gpodder                # gpodder - Podcast Player"
   "okular                 # Okular - PDF Reader"
   "pdfarranger            # PDF Manager"
   "xournalpp              # note-taking software"
   "cherrytree             # Notas hierárquicas com syntax highlight."
   "zim                    # Wiki desktop local."
)

#🛠️ System Tools ############################################################################################################################
system_tools=(
    "bleachbit                      # Bleachbit - System Cleaner"
    "gnome-disk-utility             # gnome-disk-utility"
    "baobab                         # baobab"
    "galculator                     # Calculator"
    "handbrake                      # HandBrake - Video Converter"
    "paru-bin                       # Paru - AUR Helper"
    "cups                           # cups"
    "hpipp                          # hplip"
    "system-config-printer          # printer config"
    "plasma-x11-session             # plasma x11 session"
    "kvantum                        # para aplicar temas"
    "kvantum-qt5                    # para aplicar temas"
    "marble-maps                    # OpenStreetMap Navigation"
)

#📰 Feeds ###################################################################################################################################
feeds=(
   "fluent-reader-bin              # Fluent Reader - RSS Reader"
   # "quiterss2-git                  # QuiteRSS - RSS Reader (For General Porpuse)"
)

#✍️ Fonts ###################################################################################################################################
fonts=(
   "otf-cascadia-code-nerd # Cascadia Code Nerd Font"
   "otf-codenewroman-nerd # Code New Roman Nerd Font"
   "otf-firamono-nerd # Fira Mono Nerd Font"
   "otf-droid-nerd # Droid Nerd Font"
   "otf-hasklig-nerd # Hasklig Nerd Font"
   "otf-hermit-nerd # Hermit Nerd Font"
   "otf-opendyslexic-nerd # OpenDyslexic Nerd Font"
   "otf-overpass-nerd # Overpass Nerd Font"
   "noto-fonts-cjk # Noto CJK Fonts"
   "noto-fonts-emoji # Noto Emoji"
   "noto-fonts # Noto Fonts"
   "ttf-3270-nerd # 3270 Nerd Font"
   "ttf-agave-nerd # Agave Nerd Font"
   "ttf-nerd-fonts-symbols-common # Nerd Fonts Symbols"
   "ttf-daddytime-mono-nerd # Daddytime Mono Nerd Font"
   "ttf-bitstream-vera-mono-nerd # Bitstream Vera Mono Nerd Font"
   "ttf-noto-nerd # Noto Nerd Font"
   "ttf-sharetech-mono-nerd # Sharetech Mono Nerd Font"
   "ttf-mononoki-nerd # Mononoki Nerd Font"
   "ttf-anonymouspro-nerd # Anonymous Pro Nerd Font"
   "ttf-arimo-nerd # Arimo Nerd Font"
   "ttf-bigblueterminal-nerd # Big Blue Terminal Nerd Font"
   "ttf-cousine-nerd # Cousine Nerd Font"
   "ttf-dejavu-nerd # Dejavu Nerd Font"
   "ttf-fantasque-nerd # Fantasque Nerd Font"
   "ttf-firacode-nerd # Fira Code Nerd Font"
   "ttf-go-nerd # Go Nerd Font"
   "ttf-victor-mono-nerd # Victor Mono Nerd Font"
   "ttf-ubuntu-nerd # Ubuntu Nerd Font"
   "ttf-ubuntu-mono-nerd # Ubuntu Mono Nerd Font"
   "ttf-tinos-nerd # Tinos Nerd Font"
   "ttf-terminus-nerd # Terminus Nerd Font"
   "ttf-space-mono-nerd # Space Mono Nerd Font"
   "ttf-hack-nerd # Hack Nerd Font"
   "ttf-heavydata-nerd # Heavydata Nerd Font"
   "ttf-iawriter-nerd # Ia Writer Nerd Font"
   "ttf-ibmplex-mono-nerd # IBM Plex Mono Nerd Font"
   "ttf-inconsolata-go-nerd # Inconsolata Go Nerd Font"
   "ttf-inconsolata-lgc-nerd # Inconsolata LGC Nerd Font"
   "ttf-inconsolata-nerd # Inconsolata Nerd Font"
   "ttf-iosevka-nerd # Iosevka Nerd Font"
   "ttf-jetbrains-mono-nerd # JetBrains Mono Nerd Font"
   "ttf-lekton-nerd # Lekton Nerd Font"
   "ttf-liberation-mono-nerd # Liberation Mono Nerd Font"
   "ttf-lilex-nerd # Lilex Nerd Font"
   "ttf-meslo-nerd # Meslo Nerd Font"
   "ttf-monoid-nerd # Monoid Nerd Font"
   "ttf-monofur-nerd # Monofur Nerd Font"
   "ttf-mplus-nerd # MPlus Nerd Font"
   "ttf-profont-nerd # ProFont Nerd Font"
   "ttf-proggyclean-nerd # Proggyclean Nerd Font"
   "ttf-roboto-mono-nerd # Roboto Mono Nerd Font"
   "ttf-sourcecodepro-nerd # Source Code Pro Nerd Font"
   "gnu-free-fonts # A free family of scalable outline fonts"
   "noto-fonts # Google Noto TTF fonts"
   "noto-fonts-extra # Google Noto TTF fonts - additional variants"
   "opendesktop-fonts # Chinese TrueType Fonts"
   "otf-aurulent-nerd # Patched font Aurulent Sans Mono from nerd fonts library"
   "otf-codenewroman-nerd # Patched font Code New Roman from nerd fonts library"
   "otf-comicshanns-nerd # Patched font Comic Sans (Comic Shanns) from nerd fonts library"
   "otf-commit-mono-nerd # Patched font Commit Mono from nerd fonts library"
   "otf-droid-nerd # Patched font Droid Sans Mono from nerd fonts library"
   "otf-firamono-nerd # Patched font Fira (Fura) Mono from nerd fonts library"
   "otf-geist-mono-nerd # Patched font Geist Mono from nerd fonts library"
   "otf-hasklig-nerd # Patched font Hasklig (Hasklug) from nerd fonts library"
   "otf-hermit-nerd # Patched font Hermit from nerd fonts library"
   "otf-monaspace-nerd # Patched font Monaspace (Monaspice) from nerd fonts library"
   "otf-opendyslexic-nerd # Patched font OpenDyslexic from nerd fonts library"
   "otf-overpass-nerd # Patched font Overpass from nerd fonts library"
   "ttf-0xproto-nerd # Patched font 0xProto from nerd fonts library"
   "ttf-3270-nerd # Patched font IBM 3270 from nerd fonts library"
   "ttf-agave-nerd # Patched font Agave from nerd fonts library"
   "ttf-anonymouspro-nerd # Patched font Anonymous Pro (Anonymice) from nerd fonts library"
   "ttf-bigblueterminal-nerd # Patched font Big Blue Terminal from nerd fonts library"
   "ttf-bitstream-vera-mono-nerd # Patched font Bitstream Vera Mono from nerd fonts library"
   "ttf-cascadia-code-nerd # Patched font Cascadia Code (Caskaydia) from nerd fonts library"
   "ttf-cascadia-mono-nerd # Patched font Cascadia Mono (Caskaydia) from nerd fonts library"
   "ttf-intone-nerd # Patched font Intone (Intel One) from nerd fonts library"
   "ttf-iosevka-nerd # Patched font Iosevka from nerd fonts library"
   "ttf-iosevkaterm-nerd # Patched font Iosevka Term from nerd fonts library"
   "ttf-iosevkatermslab-nerd # Patched font Iosevka Term Slab from nerd fonts library"
   "ttf-d2coding-nerd # Patched font D2Coding from nerd fonts library"
   "ttf-daddytime-mono-nerd # Patched font Daddy Time Mono from nerd fonts library"
   "ttf-inconsolata-go-nerd # Patched font Inconsolata Go from nerd fonts library"
   "ttf-inconsolata-lgc-nerd # Patched font Inconsolata LGC from nerd fonts library"
   "ttf-inconsolata-nerd # Patched font Inconsolata from nerd fonts library"
   "ttf-dejavu-nerd # Patched font Dejavu Sans Mono from nerd fonts library"
   "ttf-sharetech-mono-nerd # Patched font Share Tech Mono (Shure Tech Mono) from nerd fonts library"
   "ttf-roboto-mono-nerd # Patched font Roboto Mono from nerd fonts library"
   "ttf-space-mono-nerd # Patched font Space Mono from nerd fonts library"
   "ttf-terminus-nerd # Patched font Terminus (Terminess) from nerd fonts library"
   "ttf-tinos-nerd # Patched font Tinos from nerd fonts library"
   "ttf-ubuntu-mono-nerd # Patched font Ubuntu Mono from nerd fonts library"
   "ttf-ubuntu-nerd # Patched font Ubuntu from nerd fonts library"
   "ttf-victor-mono-nerd # Patched font Victor Mono from nerd fonts library"
   "ttf-vlgothic # Japanese TrueType fonts from Vine Linux"
   "ttf-go-nerd # Patched font Go Mono from nerd fonts library"
   "ttf-gohu-nerd # Patched font Gohufont from nerd fonts library"
   "ttf-hack-nerd # Patched font Hack from nerd fonts library"
   "ttf-firacode-nerd # Patched font Fira (Fura) Code from nerd fonts library"
   "ttf-ibmplex-mono-nerd # Patched font IBM Plex Mono (Blex) from nerd fonts library"
   "ttf-jetbrains-mono-nerd # Patched font JetBrains Mono from nerd fonts library"
   "ttf-lekton-nerd # Patched font Lekton from nerd fonts library"
   "ttf-envycoder-nerd # Patched font Envy Code R from nerd fonts library"
   "ttf-cascadia-code # A monospaced font by Microsoft that includes programming ligatures"
   "ttf-cousine-nerd # Patched font Cousine from nerd fonts library"
   "ttf-profont-nerd # Patched font ProFont from nerd fonts library"
   "ttf-proggyclean-nerd # Patched font ProggyClean from nerd fonts library"
   "ttf-recursive-nerd # Patched font Recursive Mono (Rec Mono) from nerd fonts library"
   "ttf-mplus-nerd # Patched font MPlus from nerd fonts library"
   "ttf-nerd-fonts-symbols # High number of extra glyphs from popular 'iconic fonts'"
   "ttf-nerd-fonts-symbols-mono # High number of extra glyphs from popular 'iconic fonts' (monospace)"
   "ttf-noto-nerd # Patched font Noto from nerd fonts library"
   "ttf-monoid-nerd # Patched font Monoid from nerd fonts library"
   "ttf-mononoki-nerd # Patched font Mononoki from nerd fonts library"
   "ttf-martian-mono-nerd # Patched font Martian Mono from nerd fonts library"
   "ttf-meslo-nerd # Patched font Meslo LG from nerd fonts library"
   "ttf-monofur-nerd # Patched font Monofur from nerd fonts library"
   "ttf-lilex-nerd # Patched font Lilex from nerd fonts library"
   "ttf-heavydata-nerd # Patched font Heavy Data from nerd fonts library"
   "ttf-iawriter-nerd # Patched font iA Writer (iM Writing) from nerd fonts library"
   "adobe-source-han-sans-cn-fonts # Adobe Source Han Sans Subset OTF - Simplified Chinese OpenType/CFF fonts"
   "adobe-source-han-sans-hk-fonts # Adobe Source Han Sans Subset OTF - Traditional Chinese (Hong Kong) OpenType/CFF fonts"
   "adobe-source-han-sans-jp-fonts # Adobe Source Han Sans Subset OTF - Japanese OpenType/CFF fonts"
   "adobe-source-han-sans-kr-fonts # Adobe Source Han Sans Subset OTF - Korean OpenType/CFF fonts"
   "adobe-source-han-sans-tw-fonts # Adobe Source Han Sans Subset OTF - Traditional Chinese (Taiwan) OpenType/CFF fonts"
   "adobe-source-han-serif-cn-fonts # Adobe Source Han Serif Subset OTF - Simplified Chinese OpenType/CFF fonts"
   "adobe-source-han-serif-hk-fonts # Adobe Source Han Serif Subset OTF - Traditional Chinese (Hong Kong) OpenType/CFF fonts"
   "adobe-source-han-serif-jp-fonts # Adobe Source Han Serif Subset OTF - Japanese OpenType/CFF fonts"
   "adobe-source-han-serif-kr-fonts # Adobe Source Han Serif Subset OTF - Korean OpenType/CFF fonts"
   "adobe-source-han-serif-tw-fonts # Adobe Source Han Serif Subset OTF - Traditional Chinese (Taiwan) OpenType/CFF fonts"
   "otf-aurulent-nerd # Patched font Aurulent Sans Mono from nerd fonts library"
   "otf-codenewroman-nerd # Patched font Code New Roman from nerd fonts library"
   "otf-comicshanns-nerd # Patched font Comic Sans (Comic Shanns) from nerd fonts library"
   "otf-commit-mono-nerd # Patched font Commit Mono from nerd fonts library"
   "ttf-roboto # Google's signature family of fonts"
   "ttf-roboto-mono # A monospaced addition to the Roboto type family."
   "ttf-sarasa-gothic # A CJK programming font based on Iosevka and Source Han Sans. (TTC)"
   "ttf-sazanami # Japanese fonts"
   "ttf-scheherazade-new # An Arabic Naskh-style Unicode typeface"
   "ttf-sourcecodepro-nerd # Patched font Source Code Pro from nerd fonts library"
   "ttf-tibetan-machine # Open-type unicode font for Tibetan"
   "ttf-ubuntu-font-family # Ubuntu font family"
   "ttf-anonymous-pro # A family of four fixed-width fonts designed especially with coding in mind"
   "ttf-arphic-ukai 0 # CJK Unicode font Kaiti style"
   "ttf-arphic-uming # CJK Unicode font Ming style"
   "ttf-atkinson-hyperlegible # A typeface focusing on leterform distinction for legibility for low vision readers"
   "ttf-baekmuk # Korean fonts"
   "ttf-caladea # A serif font family metric-compatible with Cambria font family"
   "ttf-charis # Font family supporting Latin and Cyrillic designed for legibility and publishing"
   "ttf-charis-sil # Font family supporting Latin and Cyrillic designed for legibility and publishing."
   "ttf-cormorant # Open-source display font family"
   "ttf-crimson # A font family for book production in the tradition of beautiful oldstyle typefaces"
   "ttf-crimson-pro # A professionally produced redesign of Crimson by Jacques Le Bailly (8 fixed weights)"
   "ttf-crimson-pro-variable # A professionally produced redesign of Crimson by Jacques Le Bailly (variable weight)"
   "otf-crimson # A font family for book production in the tradition of beautiful oldstyle typefaces"
   "otf-crimson-pro # A professionally produced redesign of Crimson by Jacques Le Bailly (8 fixed weights)"
   "otf-droid-nerd # Patched font Droid Sans Mono from nerd fonts library"
   "otf-fantasque-sans-mono # Font family with a great monospaced variant for programmers"
   "otf-firamono-nerd # Patched font Fira (Fura) Mono from nerd fonts library"
   "otf-font-awesome #Iconic font designed for Bootstrap"
   "otf-geist-mono-nerd # Patched font Geist Mono from nerd fonts library"
   "otf-hasklig-nerd # Patched font Hasklig (Hasklug) from nerd fonts library"
   "otf-monaspace-nerd # Patched font Monaspace (Monaspice) from nerd fonts library"
   "otf-opendyslexic-nerd # Patched font OpenDyslexic from nerd fonts library"
   "otf-hermit-nerd # Patched font Hermit from nerd fonts library"
   "ttf-font-awesome #Iconic font designed for Bootstrap"
   "ttf-gentium # Font supporting a wide range of Latin- and Cyrillic-based alphabets"
   "ttf-gentium-book # Font supporting a wide range of Latin- and Cyrillic-based alphabets"
   "ttf-gentium-plus # Font supporting a wide range of Latin- and Cyrillic-based alphabets"
   "ttf-junicode # Font for medievalists"
   "ttf-junicode-variable # Font for medievalists"
   "ttf-khmer # Fonts for Khmer and Latin alphabets"
   "otf-libertinus # Fonts based on Linux Libertine/Biolinum, with extended math support"
   "otf-monaspace # An innovative superfamily of fonts for code, by GitHub"
   "otf-overpass # Open source web font family (Open Type Font)"
   "otf-overpass-nerd # Patched font Overpass from nerd fonts library"
   "otf-ipaexfont # Japanese outline fonts following the tradition of Japanese printing font"
   "otf-ipafont # Japanese outline fonts by Information-technology Promotion Agency, Japan (IPA)"
   "otf-ipamjfont # Japanese outline Mincho fonts implementing IVS compliant with Hanyo-Denshi collection (based on IPAex Mincho# Fonts)"
   "ttf-liberation-mono-nerd # Patched font Liberation Mono from nerd fonts library"
   "ttf-libertinus # Fonts based on Linux Libertine/Biolinum, with extended math support"
   "ttf-fira-code # Monospaced font with programming ligatures"
   "ttf-fira-mono # Mozilla's monospace typeface designed for Firefox OS"
   "ttf-fira-sans # Mozilla's sans-serif typeface designed for Firefox OS"
   "ttf-fantasque-sans-mono # Font family with a great monospaced variant for programmers"
   "ttf-hack # A hand groomed and optically balanced typeface based on Bitstream Vera Mono."
   "ttf-input # Fonts for code from DJR & Font Bureau"
   "ttf-input-nerd # Patched font Input containing nerd font symbols"
   "libotf # OpenType Font library"
   "otf-cormorant # Open-source display font family"
   "otf-fira-mono # Mozilla's monospace typeface designed for Firefox OS"
   "otf-fira-sans # Mozilla's sans-serif typeface designed for Firefox OS"
   "otf-hermit # A monospace font designed to be clear, pragmatic and very readable."
   "otf-junicode # Font for medievalists"
   "ttf-mona-sans # Mona Sans, a variable font from GitHub"
   "ttf-monaspace-variable # An innovative superfamily of fonts for code, by GitHub"
   "ttf-monofur # A monospaced font derived from the eurofurence typeface family"
   "ttf-monoid # A customisable coding font"
   "ttf-overpass # Open source web font family (True Type Font)"
   "otf-atkinson-hyperlegible # A typeface focusing on leterform distinction for legibility for low vision readers"
   "otf-cascadia-code # A monospaced font by Microsoft that includes programming ligatures"
   "ttf-jigmo # Japanese Kanji font set which is the official successor to Hanazono Mincho"
   "ttf-lato # A sanserif typeface family bearing the Polish name of "Summer""
   "otf-latin-modern # Improved version of Computer Modern fonts as used in LaTeX"
   "otf-latinmodern-math # Improved version of Computer Modern fonts as used in LaTeX – OpenType Math component"
   "otf-montserrat # The Montserrat project - OTF"
   "powerline-fonts # Patched fonts for powerline"
   "python-sphinx-notfound-page # Create a custom 404 page with absolute URLs hardcoded"
   "python-ziafont # Convert TTF/OTF font glyphs to SVG paths"
   "robotfindskitten # Yet another Zen simulation"
   "toml-bombadil # Adotfile manager with templating"
   "ttf-indic-otf # Indic Opentype Fonts collection"
   "ttf-doulos-sil # Complete support for the International Phonetic Alphabet"
   "ttf-droid # General-purpose fonts released by Google as part of Android"
   "ttf-eurof # The original eurofurence font designed for headlines, signs, badges, inscriptions, et al."
   "ttf-hanazono # A free Japanese kanji font, which contains about 78,685 characters (and 2 SPACEs) defined in ISO/IEC 10646"
   "ttf-hannom # Chinese and Vietnamese TrueType fonts"
   "ttf-ibm-plex # IBM Plex Mono, Sans, and Serif"
   "ttf-inconsolata # Monospace font for pretty code listings and for the terminal"
   "ttf-indic-otf # Indic Opentype Fonts collection"
   "ttf-jetbrains-mono # Typeface for developers, by JetBrains"
   "ttf-linux-libertine # Serif (Libertine) and Sans Serif (Biolinum) OpenType fonts with large Unicode coverage"
   "ttf-linux-libertine-g # Graphite port of Linux Libertine and Linux Biolinum fonts"
   "ttf-montserrat # The Montserrat project - TTF"
   "ttf-nerd-fonts-symbols-common # High number of extra glyphs from popular 'iconic fonts' (common files)"
   "ttf-nunito # Sans serif font with rounded tips by Vernon Adams"
)

#🌐 Network an Internet ############################################################################################################################
network_and_internet=(
   "lynx                                   # Terminal Web Browser"
   "thunderbird-bin                        # Thunderbird - Email Client"
   "syncthing                              # syncthing"
   "betterbird-bin                         # Thunderbird Email Reader but better"
   "transmission-qt                        # Transmission - Torrent Client"
   "postman-bin                            # API Testing"
   "torbrowser-launcher                    # Tor Browser"
   "nextcloud                              # A cloud server to store your files centrally on a hardware controlled by you"
   # "teamSpeak3                             # Software for quality voice communication via the Internet"
   "discord                                # Discord"
   "telegram-desktop                       # Telegram Desktop"
   "monero-gui                             # Monero - wallet for Monero"
   # "librewolf-bin                          # Web Browser"
)

#🎨 Graphics ################################################################################################################################
graphics=(
   "gimp                           # Gimp - Image Editor"
   "blender                        # Blender - 3d Modeling"
   "inkscape                       # Inkscape - Vector Graphics Editor"
   "scribus                        # Scribus - Page Layout Program"
   # "darktable-git                  # Darktable - Photo Editor"
   "drawio                         # Draw.io - Diagram Editor"
   # "dia                            # Dia - Diagram Editor"
   "kolourpaint                    # Paint Program"
   "penpot-desktop-bin             # Canva's Like Program"
   "krita                          # Krita - Paint Program"
   "fontforge                      # Font Editor"
   #"digikam                        # Photo Manager"
   #"glaximate                      # 3D Animation Program"
   #"tahoma2d                       # 2D Animation Program"
   #"opentoonz                      # Animation Program"
)

#👨🏻‍💻 Dev #####################################################################################################################################
dev=(
   "mysql-workbench	              # MySQL Workbench - database"
   "mc                             # Midnight Commander"
   "filezilla                      # Filezilla"
   "dbeaver                        # Dbeaver"
   "vscodium-bin                   # Visual Studio Code"
   "github-desktop-bin             # Github Client"
   "npm                            # Node Package Manager"
   "dotnet-runtime                 # .NET Runtime"
   "dotnet-sdk                     # .NET SDK"
   "rustup                         # Rust Toolchain"
   "python                         # Python"
)

#📃 Office ##################################################################################################################################
office=(
   "onlyoffice-bin                 # OnlyOffice - office suite # Check the plugins for OnlyOffice"
   "calibre                        # Calibre - Ebook management application"
)

#📊 Terminal Monitors #########################################################################################################################
terminal_monitors=(
   "htop                           # Htop - System Monitor"
   "bpytop                         # Monitor de sistema moderno  (melhor UI que htop)."
   "glances                        # Monitor de sistema completo (CPU, RAM, redes, discos)."
   "lm_sensors                     # Monitoramento de temperatura e sensores."
   "ncdu                           # Análise de uso de disco via terminal."
   "nmap                           # Port Scanner"
   "cli-visualizer                 #  A cli visualizer for audio (archived version)"
)

#🪚 Terminal Tools #########################################################################################################################
terminal_tools=(
   "neofetch                               # Neofetch - System Information"
   "screenfetch                            # Alternativa ao neofetch."
   "iperf3                                 # Teste de velocidade de rede "
   "mtr                                    # diagnosticar problemas de rede"
   "ethtool                                # Configurações de interface de rede."
   "openvpn                                # VPN Client"
   "wireguard-tools                        # WireGuard Client"
   "tmux                                   # Terminal Multiplexer"
   "ranger                                 # Navegador de arquivos no terminal"
   "ffmpeg                                 # FFMpeg - Video Converter"
   "mc                                     # cross-platform orthodox file manager"
)

#🖥️ Text Highlight Replacements #################################################################################################################
text_highlight_replacements=(
   "exa                                    # ls aprimorado, colorido, tree view."
   "bat                                    # cat aprimorado, com syntax highlight."
   "ripgrep                                # Much faster, supports regex & highlights matches."
   "fd                                     # Simpler and faster file finder with colorized output."
   "dust                                   # A better du, a faster du, a more accurate du."
   "pydf                                   # Python implementation of du, df, and duf"
   "procs                                  # A better top, a faster top, a more accurate top"
   "gping                                  # Ping with live graph display."
   "broot                                  # Directory tree with colors and navigation."
)

#🕹️ Games ##############################################################################################################################
games=(
   # "bastet                                 # Bastet - Breakout Clone"
   "nsnake                                 # nsnake - Snake Clone"
   "robotfindskitten                       # Yet another Zen simulationl"
   "nethack                                # A single player dungeon exploration game"
   "hydra-launcher-bin                     # Hydra Launcher"
#    "umu-launcher                           # The Unified Launcher for Windows Games on Linux, to run Proton with fixes outside of Steam"
#    "steam                                  # Steam - Game Launcher"
   "mari0 # The Mario game with Portal gun mechanics"
   "tali # Beat the odds in a poker-style dice game"
   "glob2 # An innovative Real-Time Strategy game which reduces micro-management by automatically assigning tasks to units"
   "kapman # A clone of the well known game Pac-Man"
   "freeciv # A multiuser clone of the famous Microprose game of Civilization"
   "bomber # A single player arcade game"
   "freecol # A turn-based strategy game based on Colonization"
   "kajongg # The ancient Chinese board game for 4 players"
   "gbrainy # A brain teaser game and trainer to have fun and to keep your brain trained"
   "katomic # A fun and educational game built around molecular geometry"
   "barrage # A violent point-and-click shooting game with nice effects"
   "simutrans # Transportation simulation game"
   "granatier # A clone of the classic Bomberman game"
   "freeorion # A turn-based space empire and galactic conquest game"
   "widelands # A realtime strategy game with emphasis on economy and transport"
   "palapeli # A single-player jigsaw puzzle game"
   "kanagram # Letter Order Game"
   "supertux # A classic 2D jump'n'run sidescroller game in a style similar to the original SuperMario games"
   "dopewars # Turn based strategy game based on "Drug Wars" from 1984"
   "blinken # Memory Enhancement Game"
   "kubrick # Based on the famous Rubik's Cube"
   "khangman # Hangman Game"
   "openarena # A violent, sexy, multiplayer first person shooter based on the ioquake3 engine (binary package)"
   "0ad # Cross-platform, 3D and historically-based real-time strategy game"
   "endless-sky # A sandbox-style space exploration and combat game"
   "openttd # Engine for running Transport Tycoon Deluxe"

)

#🖼️ Terminal Visual Demos & Toys ################################################################################################################
terminal_toys=(
   "asciiquarium                           # ASCII Aquarium"
   "cmatrix                                # ASCII Matrix Art"
   "hollywood                              # ASCII HackerLooking Art"
   "pipes.sh                               # ASCII Pipe Art"
   "figlet                                 # Gera banners ASCII no terminal."
   "cbonsai                                # ASCII bonsai"
)

#✏️ Editing #################################################################################################################################
editors=(
   "tenacity                       # An easy-to-use multi-track audio editor and recorder, forked from Audacity"
   "kdenlive                       # Kdenlive - Video Editor"
   "texlive                        # TeX Live - Text Editor and Latex"
   # "leafpad                        # Text Editor"
   "lmms                           # LMMS - Music Editor"
   "rosegarden                     # Rosegarden - Music Editor"
   # "natron-bin                     # Natron - Special Effects"
   # "friction                       # Vector Animation"
)

#👤 Social ##################################################################################################################################
social=(
   "signal-desktop                 # Signal - XMPP Messager"
   "discord                        # Discord - All-in-one voice and text chat"
   "telegram-desktop               # Telegram - Instant Messaging # Search how to install telegram Themes"
)

# ==================================================================
#  Run Installations
# ==================================================================

install_category dev "Development"
install_category system_tools "System Tools"
install_category terminal_monitors "Terminal Monitors"
install_category terminal_tools "Terminal Tools"
install_category text_highlight_replacements "Text Highlight Replacements"
install_category terminal_toys "Terminal Visual Demos & Toys"
install_category network_and_internet "Network and Internet"
install_category fonts "Fonts"
install_category office "Office"
install_category editors "Editors"
install_category media "Media"
install_category graphics "Graphics"
install_category games "Games"
install_category social "Social"
install_category feeds "Feed Readers"

# ==================================================================
#  Post Installations
# ==================================================================

echo -e "${BOLD}==================================================================${RESET}"
echo -e "${YELLOW}Enable Bluetooth Service...${RESET}"
echo -e "${BOLD}==================================================================${RESET}"

rfkill unblock bluetooth # Unblock Bluetooth
sudo systemctl start bluetooth.service # Start Bluetooth service
sudo systemctl enable bluetooth.service # Enable Bluetooth service to start on boot
echo -e "\033[1;32mBluetooth has been enabled.\033[0m"

# --- Install extensions from vscode ------------------------------------------------
echo -e "${BOLD}==================================================================${RESET}"
echo -e "${YELLOW}Installing extensions from vscode...${RESET}"
echo -e "${BOLD}==================================================================${RESET}"
codium --install-extension ms-python.python 
codium --install-extension Codeium.codeium 
codium --install-extension mikoz.autoflake-extension
codium --install-extension cstrap.flask-snippets
codium --install-extension wholroyd.jinja
codium --install-extension ms-python.python
codium --install-extension ms-python.debugpy
codium --install-extension redhat.vscode-xml
codium --install-extension DotJoshJohnson.xml
codium --install-extension eamodio.gitlens
codium --install-extension wix.vscode-import-cost
codium --install-extension ms-python.isort
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension streetsidesoftware.code-spell-checker-portuguese
codium --install-extension streetsidesoftware.code-spell-checker-cspell-bundled-dictionaries
codium --install-extension hediet.vscode-drawio
codium --install-extension DavidAnson.vscode-markdownlint
codium --install-extension GitHub.github-vscode-theme
codium --install-extension GrapeCity.gc-excelviewer
codium --install-extension hashicorp.terraform
codium --install-extension hilleer.yaml-plus-json
codium --install-extension jebbs.plantuml
codium --install-extension jock.svg
codium --install-extension johnpapa.vscode-peacock
codium --install-extension mikestead.dotenv
codium --install-extension redhat.vscode-yaml

# --- Other Configs -------------------------------------------------------------
echo -e "${BOLD}==================================================================${RESET}"
echo -e "${YELLOW}Disabling firewall...${RESET}"
echo -e "${YELLOW}Enabling cups...${RESET}"
echo -e "${BOLD}==================================================================${RESET}"
sudo systTemctl disable --now firewalld # Disable firewalld
sudo systemctl enable --now cups.service

# --- Aliases -----------------------------------------------------------------
echo -e "${BOLD}==================================================================${RESET}"
echo -e "${YELLOW}Setting up aliases...${RESET}"
echo -e "${BOLD}==================================================================${RESET}"

# Append aliases to ~/.bashrc or ~/.zshrc depending on your shell
SHELL_RC="$HOME/.bashrc"
[[ "$SHELL" == *zsh ]] && SHELL_RC="$HOME/.zshrc"

{
    echo ""
    echo "# --- Custom Aliases ---"
    echo "alias ls='exa --icons --group-directories-first'"
    echo "alias ll='exa -l --icons --group-directories-first'"
    echo "alias cat='bat'"
    echo "alias find='fd'"
    echo "alias grep='rg'"
    echo "alias du='dust'"
    echo "alias df='pydf'"
    echo "alias top='procs'"
    echo "alias ping='gping'"
    echo "alias tree='broot'"
} >> "$SHELL_RC"

echo -e "${GREEN}✅ Aliases added to $SHELL_RC${RESET}"
echo -e "${YELLOW}→ Reload your shell or run: source $SHELL_RC${RESET}"

# ==================================================================
#  Summary
# ==================================================================
if [ -s "$FAILED_LOG" ]; then
    echo -e "${YELLOW}⚠️  The following packages failed to install:${RESET}"
    cat "$FAILED_LOG"
    echo -e "\nLog saved at: ${BOLD}$FAILED_LOG${RESET}"
else
    echo -e "${GREEN}✅ All packages installed successfully!${RESET}"
fi

# ==================================================================
#  Reboot
# ===================================================================
# reboot


