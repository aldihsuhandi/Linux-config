# !/bin/bash
echo "Installing paru..."
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
echo '--- done ---'
