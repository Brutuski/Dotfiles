syntax enable

"Line wrap and break
set linebreak
set wrap

"Syntax highlighting
filetype plugin indent on
syntax on

"Use universal Clipboard
set clipboard=unnamed

"Set encoding
set encoding=utf-8

"Theme
colorscheme lucario

"Line number
set number
set termguicolors

"Plugins using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/indentpython.vim'

call plug#end()


"Nerdtree toggle Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Open Nerdtree if no files were specified 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Rainbow Parentheses
let g:rainbow_active = 1


