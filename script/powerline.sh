# !/bin/bash

echo "installing powerline-shell"
sudo pacman -S python-pip
sudo pip install powerline-shell

mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json

cp ./bash/config.json ~/.config/powerline-shell/config.json
mkdir ~/.config/powerline-shell/themes
cp ./bash/themes/my_themes.py ~/.config/powerline-shell/themes/my_themes.py
echo "finish installing powerline-shell"
