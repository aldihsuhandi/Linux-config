# !/bin/bash

echo "only copy dot files and configs? [Y/N]"
echo "(x for do not install anything)"
read inp
echo ' '
if [ $inp = "Y" -o $inp = "y" ]
then
    echo "copying .vimrc, .zshrc and .bashrc to home..."
    # echo ' '
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    cp ./zsh/.zshrc ~/.zshrc
    echo "copying alacritty config..."
    echo ' '
    cp ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
    echo "install vundle and powerline shell? [Y/N]"
    read inp2
    echo ' '
    if [ $inp2 = "Y" -o $inp2 = "y" ]
    then
        ./script/vim.sh
        ./script/powerline.sh
    fi
elif [ $inp = "N" -o $inp = "n" ]
then

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
    echo 'installing various applications (press ctrl + c to cancel)'
    echo ' '
    yay -S gvim discord brave-bin spotify alacritty exa audacious minetime-bin playerctl alsa winetricks firefox kdeconnect neofetch ripgrep noto-fonts-emoji noto-fonts-cjk mailspring gnome-keyring libgnome-keyring unrar bitwarden-bin
    
    echo 'setting up alacritty'
    echo ' '
    mkdir -p ~/.config/alacritty
    cp ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

    echo 'changing default github editor to vim'
    echo ' '
    git config --global core.editor "vim"

else
    echo 'there is nothing to do..'
    echo ' '
fi

echo "update template for coding? [Y/N]"
read var
echo ' '

if [ $var = "Y" -o $var = "y" ]
then
    mkdir -p ~/Documents/c/template
    mkdir -p ~/Documents/cpp/template
    cp ./template/template.cpp ~/Documents/cpp/template/template.cpp
    cp ./template/template.c ~/Documents/c/template/template.c
fi

# setting up zsh
# echo "do you want to install zsh? [Y/N]"
# read zshinp
# if [ $zshinp = "Y" -o $zshinp = "y" ]
# then
#     ./script/zsh/sh
#     zsh
# fi
