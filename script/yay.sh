# !/bin/bash
echo 'Installing yay...'
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo '--- done ---'
