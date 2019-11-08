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
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'dense-analysis/ale'

call plug#end()


"Nerdtree toggle Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Open Nerdtree if no files were specified 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Rainbow Parentheses
let g:rainbow_active = 1

"Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimted_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"Snippets settings
Plug 'sirver/ultisnips'
let g:UtilSnipsDirectory='~/.vim/utilsnippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"Python Code Folding enable
let g:SimpylFold_docstring_preview = 1

"PEP-8 Python Indentation
au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Python highlight
let python_highlight_all=1

"Ale linting
let g:ale_sign_error='!-!'
let g:ale_sign_warning='--'
"E & W colors
highlight clear ALEErrorSign
highlight clear ALEWarningSign
"Show in Statusline
let g:airline#extensions#ale#enables=1
"Error Message format
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'
"Only run on :w (saves battery)
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave='never'
let g:ale_lint_on_enter=0
let g:ale_lint_on_save=1
