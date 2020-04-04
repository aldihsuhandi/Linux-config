# !/bin/bash

# setting up yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# bashrc
cp ./bash/.bashrc ~/.bashrc
 
# powerline
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
cd ..

mkdir -p ~/.config/powerline-shell
cp ./powerline-shell/*.* ~/.config/powerline-shell

bash

# vim
cp ./vim/.vimrc ~/.vimrc
cp -r ./vim/.vim ~/.vim
