set nocompatible
filetype off

set rtp+=~/.vim/plugManager/Vundle.vim
call vundle#begin('~/.vim/plug')
" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Functional plugin
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'uiiaoo/java-syntax.vim'

" Color Scheme
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'fatih/molokai'
Plugin 'joshdick/onedark.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'morhetz/gruvbox'

call vundle#end()   
filetype plugin indent on

" general
set tabstop=4 
set softtabstop=0 
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent
set number relativenumber
set ruler
set clipboard=unnamedplus
set cursorline
set mouse=a
syntax on
set laststatus=2
set splitbelow splitright

" statusline
set statusline=""
set statusline+=%#CursorLineNreNr#
set statusline+=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Conceal#
set statusline+=Current:\ %4l\ Total:\ %4L

filetype plugin on

" Color Scheme
let g:gruvbox_italic = 1
colorscheme gruvbox
set background=dark
let g:onedark_termcolors = 1

" NERDTREE
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCommendEmptyLines = 1
let g:NERDTrimTrailingWhiteSpace = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Markdown
let g:vim_markdown_folding_disabled = 1

" shortcut
map <F1> :NERDTreeToggle<CR>
map <F3> :w<CR>
map <F4> :q<CR>
map <F8> :w! <bar> !clear && gcc -o %:r % -std=c99 -Wall -lm && ./%:r<CR>
map <F9> :w! <bar> !clear && g++ -o %:r % -std=gnu++17 -Wall && ./%:r<CR>
nnoremap <F10> :w! <bar>  !clear && javac % && java Main<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-R> :so .vimrc<CR>
noremap <silent> <A-Left> :vertical resize +3<CR>
noremap <silent> <A-Right> :vertical resize -3<CR>
noremap <silent> <A-Up> :resize +3<CR>
noremap <silent> <A-Down> :resize -3<CR>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
