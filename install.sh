# !/bin/bash

echo "only copy vimrc and bashrc? [Y/N]"
read inp
if [ $inp = "Y" -o $inp = "y" ]
then
    echo "copying .vimrc and .bashrc to home..."
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    bash
    echo "Finish"
elif [ $inp = "N" -o $inp = "n" ]
then
    # setting up .vimrc and .bashrc
    echo 'setting up bash and vim'
    cp ./bash/.bashrc ~/.bashrc
    cp ./vim/.vimrc ~/.vimrc
    ./script/vim.sh
    bash
    echo 'finish setting up bash and vim'

    # running script for yay
    ./script/yay.sh
else
    echo 'there is nothing to do..'
fi
