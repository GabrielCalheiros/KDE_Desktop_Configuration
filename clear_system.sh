# Remove orphaned packages
paru -Sccd

# Remove more orphaned packages
sudo pacman -Qtdq | sudo pacman -Rns -

# Remove uninstalled packages from cache
sudo paccache -ruk0

# Clean rust cache
# https://github.com/rust-lang/cargo/issues/3289#issuecomment-1086844583
if [ -e ~/.cargo/registry ]; then
  echo "Cleaning Rust cache"
  rm -r ~/.cargo/registry/{cache,src} &> /dev/null
fi

# Clean npm cache
if type npm &> /dev/null; then
  echo "Cleaning npm cache"
  npm cache clean --force
fi

# Clear coredumps
if [[ -e /var/lib/systemd/coredump/ && -n "$(ls -A /var/lib/systemd/coredump/)" ]]; then
  echo "Cleaning coredumps"
  sudo rm /var/lib/systemd/coredump/*
fi

# Clear journalctl
echo "Cleaning all journalctl entries"
sudo journalctl --rotate
sudo journalctl --vacuum-time=1s

# Empty trash
echo "Cleaning trash"
gio trash --empty
