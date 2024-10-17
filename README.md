# KDE_Desktop_Configuration

![image](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![image](https://img.shields.io/badge/manjaro-35BF5C?style=for-the-badge&logo=manjaro&logoColor=white)
![image](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

Configuration files for my manjaro cinnamon desktop configurations, fonts instalation, wallpappers, opmls and etc.

# Commands to Remember:

**Update both Official and AUR repositories**: <code>yay -Syu</code>

**Install a package:** <code>sudo pacman -S package_name</code>

**Search for packages with Yay:** <code>yay -Ss package_name</code>

**Search for packages with Pacman:** <code>pacman -Ss package_name</code>

**Install AUR package with Yay:** <code>yay -S package_name</code>


## Cleaning Up Your System:

### Clear Pacman Cache

Pacman keeps a cache of all downloaded packages. Over time, this can consume significant disk space.

**List Pacman Cache** <code>ls /var/cache/pacman/pkg/</code>

**Remove Uninstalled Packages from Cache:** <code>sudo pacman -Sc</code>

Remove All Cached Packages (Use with Caution): <code>sudo pacman -Scc</code>

*This will remove all cached packages and is generally not recommended unless you have limited disk space and are okay with re-downloading packages if needed.*


### Clean Yay Cache

**List Cached AUR Packages:** <code>ls ~/.cache/yay/</code>

**Remove Cached AUR Packages Older Than a Certain Date:** 

*Unfortunately, yay doesn't provide a direct command for this, but you can manually delete old cached files. For example, to delete all cached files:*

<code>rm -rf ~/.cache/yay/*</code>

### Refresh Mirrorlist

Update Mirrors via Terminal: <code>sudo pacman-mirrors --fasttrack</code>

Then, synchronize and update: <code>sudo pacman -Syyu</code>