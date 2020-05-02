# !/bin/bash

echo "only copy vimrc and bashrc? [Y/N]"
read inp
if [ $inp = "Y" -o $inp = "y" ]
then
    echo "copying .vimrc and .bashrc to home..."
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    echo "install vundle and powerline shell? [Y/N]"
    read inp2
    if [ $inp2 = "Y" -o $inp2 = "y" ]
    then
        ./script/vim.sh
        ./script/powerline.sh
    fi
    bash
elif [ $inp = "N" -o $inp = "n" ]
then
    # setting up .vimrc and .bashrc
    echo 'setting up bash and vim'
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    ./script/vim.sh
    ./script/powerline.sh
    echo 'finish setting up bash and vim'

    # running script for yay
    ./script/yay.sh

    # installing package from aur
    echo 'installing discord, google chrome and spotify (press ctrl + c to cancel")'
    yay -S discord google-chrome spotify zoom

    bash
else
    echo 'there is nothing to do..'
fi

echo "update template for coding? [Y/N]"
read var

if [ $var = "Y" -o $var = "y" ]
then
    mkdir -p ~/Documents/c/template
    mkdir -p ~/Documents/cpp/template
    cp ./template/template.cpp ~/Documents/cpp/template/template.cpp
    cp ./template/template.c ~/Documents/c/template/template.c
fi
