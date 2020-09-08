set nocompatible
filetype off

set rtp+=~/.vim/plugManager/Vundle.vim
call vundle#begin('~/.vim/plug')
" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Functional plugin
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'ap/vim-css-color'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Syntax Highlight
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-python/python-syntax'
Plugin 'plasticboy/vim-markdown'
Plugin 'uiiaoo/java-syntax.vim'

" Color Scheme
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'fatih/molokai'
Plugin 'joshdick/onedark.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'
Plugin 'reedes/vim-colors-pencil'

call vundle#end()   
filetype plugin indent on

" general
set tabstop=4 
set softtabstop=4
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
syntax on
set laststatus=2
set splitbelow splitright

" cursor
let &t_SI = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x6"

" statusline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'atomic'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

filetype plugin on

" Color Scheme
let g:gruvbox_italic = 1
colorscheme pencil
set background=dark
let g:onedark_termcolors = 1
set termguicolors

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

" Python
let g:python_highlight_all = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errorss = 1

" shortcut
map <F1> :NERDTreeToggle<CR>
map <F3> :w<CR>
map <F4> :q<CR>
map <F5> :w! <bar> !clear && g++ -o %:r % -std=gnu++17 -Wall -Wshadow -Wextra<CR>
map <F6> :w! <bar> !clear && gcc -o %:r % -std=c99 -Wall -lm -Wshadow -Wextra<CR>
map <F8> :w! <bar> !clear && gcc -o %:r % -std=c99 -Wall -lm -Wshadow -Wextra && ./%:r<CR>
map <F9> :w! <bar> !clear && g++ -o %:r % -std=gnu++17 -Wall -Wshadow -Wextra && ./%:r<CR>
nnoremap <F10> :wall! <bar>  !clear && javac Main.java && java Main<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-c> :%y+<CR>
nnoremap <C-w> :wall<CR>
nnoremap <C-R> :so .vimrc<CR>
nnoremap <C-Down> :tabNext<CR>
nnoremap <C-Up> :tabprevious<CR>
noremap <silent> <A-Left> :vertical resize +3<CR>
noremap <silent> <A-Right> :vertical resize -3<CR>
noremap <silent> <A-Up> :resize +3<CR>
noremap <silent> <A-Down> :resize -3<CR>
vmap  <plug>NERDCommenterToggle
nmap  <plug>NERDCommenterToggle

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko

" Alacritty fix
set ttymouse=sgr


