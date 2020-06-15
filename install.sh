# !/bin/bash

echo "only copy dot files and configs? [Y/N]"
echo "(x for do not install anything)"
echo ' '
read inp
if [ $inp = "Y" -o $inp = "y" ]
then
    echo "copying .vimrc, .zshrc and .bashrc to home..."
    echo ' '
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    cp ./zsh/.zshrc ~/.zshrc
    echo "copying alacritty config..."
    echo ' '
    cp ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
    echo "install vundle and powerline shell? [Y/N]"
    read inp2
    if [ $inp2 = "Y" -o $inp2 = "y" ]
    then
        ./script/vim.sh
        ./script/powerline.sh
    fi
    echo ' '
elif [ $inp = "N" -o $inp = "n" ]
then
    # setting up zsh
    echo "do you want to install zsh? [Y/N]"
    read zshinp
    if [ $zshinp = "Y" -o $zshinp = "y" ]
    then
        sudo pacman -S zsh
        cp ./zsh/.zshrc ~/.zshrc
    fi
    echo ' '

    # setting up .vimrc and .bashrc
    echo 'setting up bash and vim'
    echo ' '
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    ./script/vim.sh
    ./script/powerline.sh

    # running script for yay
    ./script/yay.sh

    # installing package from repo
    echo 'installing various applications (press ctrl + c to cancel")'
    echo ' '
    yay -S discord google-chrome spotify zoom teams alacritty exa audacious minetime-bin playerctl blueman alsa winetricks firefox lattedock kdeconnect jdk-openjdk11 jre11-openjdk

    echo 'setting up alacritty'
    echo ' '
    mkdir -p ~/.config/alacritty
    cp ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

else
    echo 'there is nothing to do..'
    echo ' '
fi

echo "update template for coding? [Y/N]"
echo ' '
read var

if [ $var = "Y" -o $var = "y" ]
then
    mkdir -p ~/Documents/c/template
    mkdir -p ~/Documents/cpp/template
    cp ./template/template.cpp ~/Documents/cpp/template/template.cpp
    cp ./template/template.c ~/Documents/c/template/template.c
fi

bash
