# !/bin/bash

echo "installing powerline-shell"
sudo pacman -S python-pip
sudo pip install powerline-shell

mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json

cp ../bash/config.json ~/.config/powerline-shell/config.json
echo "finish installing powerline-shell"
