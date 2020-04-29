# !/bin/bash

#setting up .vimrc and .bashrc
echo 'setting up bash and vim'
cp ./bash/.bashrc ~/.bashrc
cp ./vim/.vimrc ~/.vimrc
./script/vim.sh
bash
echo 'finish setting up bash and vim'

#running script for yay
./script/yay.sh

