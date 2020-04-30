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
    yay -S discord google-chrome spotify zoom

    bash
else
    echo 'there is nothing to do..'
fi

echo "Install vim plugin now? [Y/N]"
read inp3
if [ $inp3 = "Y" -o $inp3 = "y" ]
then
    vim -c 'PluginInstall'
