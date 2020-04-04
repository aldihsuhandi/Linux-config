set nocompatible
filetype off

set rtp+=~/.vim/plugManager/Vundle.vim
call vundle#begin('~/.vim/plug')
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdcommenter'
Plugin 'itchyny/Lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'uiiaoo/java-syntax.vim'
call vundle#end()   
filetype plugin indent on

set tabstop=4 
set softtabstop=0 
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent
set number
set ruler
set clipboard=unnamedplus
set cursorline
set mouse=a
color molokai
syntax on
set laststatus=2

filetype plugin on

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCommendEmptyLines = 1
let g:NERDTrimTrailingWhiteSpace = 1
let g:NERDToggleCheckAllLines = 1
let g:rainbow_active = 1
let g:vim_markdown_folding_disabled = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <F1> :NERDTreeToggle<CR>
map <F3> :w<CR>
map <F4> :q<CR>
