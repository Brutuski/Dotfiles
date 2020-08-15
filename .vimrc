"  ____    ____  __  .___  ___. .______       ______
"  \   \  /   / |  | |   \/   | |   _  \     /      |
"   \   \/   /  |  | |  \  /  | |  |_)  |   |  ,----'
"    \      /   |  | |  |\/|  | |      /    |  |
"     \    /    |  | |  |  |  | |  |\  \--. |  `----.
"      \__/     |__| |__|  |__| | _| `.___|  \______|
"

syntax enable

"Line wrap and break
set linebreak
set wrap

"File detection
filetype on

"Syntax highlighting
filetype plugin indent on
syntax on

"Show partial command in status line
set showcmd

"Use universal Clipboard
set clipboard=unnamed

"Show cursor position
set ruler

"Incremental search
set incsearch

"Highlight all search results
set hlsearch

"Ignore case in search
set ignorecase

"Ignore case turned off if search pattern includes Uppercase
set smartcase

"Enable autocompletion
set wildmode=longest,list,full

"Set encoding
set encoding=utf-8

"Vim sets the window title
set title

"Match brackets
set mps=(:),{:},[:],<:>
set showmatch
set mat=2

"Theme
"packadd! dracula
colorscheme lighthaus

"Line number
set number
set termguicolors

"Folding
"Files not folded on opening
set nofoldenable

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
Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'dense-analysis/ale'
Plug 'mboughaba/i3config.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"Syntax
autocmd BufNewFile,BufRead *.config           set syntax=sh
autocmd BufNewFile,BufRead *.conf             set syntax=sh
autocmd BufNewFile,BufRead *.rc               set syntax=sh
autocmd BufNewFile,BufRead pkgfile            set syntax=sh
autocmd BufNewFile,BufFilePre,BufRead *.md    set filetype=markdown.pandoc
autocmd BufNewFile,BufRead *.c                set syntax=c
autocmd BufNewFile,BufRead *.hs               set syntax=haskell
autocmd BufNewFile,BufRead *.txt              set syntax=off
autocmd BufNewFile,BufRead *.tex              set syntax=tex

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"Nerdtree toggle Ctrl+Shift+n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable  = ''
let g:NERDTreeDirArrowCollapsible = ''

"Open Nerdtree if no files were specified
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"IndentGuide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size            = 1
set ts=2 sw=2 et

"Rainbow Parentheses
let g:rainbow_active   = 1
let g:rainbow_ctermfgs = ['green', 'yellow', 'cyan', 'magenta', 'red']

"Vimtex settings
let g:tex_flavor                      = 'latex'
let g:vimtex_view_general_viewer      = 'zathura'
let g:vimtex_view_method              = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode            = 0
let g:vimtex_compiler_method          = 'latexmk'
set conceallevel=1
let g:tex_conceal                     = 'abdmg'

"Snippets settings
set runtimepath+=~/.vim/ultisnippets
let g:UltiSnipsSnippetDir          = '~/.vim/UltiSnips'
let g:UltiSnipsEditSplit           = 'vertical'
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsJumpForwardTrigger  = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


"i3 Config highlight
aug i3config_ft_detection
	au!
	au BufNewfile,BufRead ~/.config/i3/config set filetype=i3config
aug end

"Airline theme
let g:airline_theme = 'jet'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = '||'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"Ale linting
let g:ale_sign_error   = '❌'
let g:ale_sign_warning = '❗'
"E & W colors
highlight clear ALEErrorSign
highlight clear ALEWarningSign
"Error Message format
let g:ale_echo_msg_error_str   = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format      = '[%linter%] %s [%severity%]'
"Only run on :w (saves battery)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 'never'
let g:ale_lint_on_enter        = 0
let g:ale_lint_on_save         = 1
