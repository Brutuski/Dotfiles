"  ____    ____  __  .___  ___. .______       ______
"  \   \  /   / |  | |   \/   | |   _  \     /      |
"   \   \/   /  |  | |  \  /  | |  |_)  |   |  ,----'
"    \      /   |  | |  |\/|  | |      /    |  |
"     \    /    |  | |  |  |  | |  |\  \--. |  `----.
"      \__/     |__| |__|  |__| | _| `.___|  \______|
"

"LINE BREAK & WRAP
set linebreak
set wrap


"FILE DETECTION
filetype on


"SYNTAX HIGHTLIGHT & DETECTION, PLUGIN, INDENT
syntax on
syntax enable
filetype plugin indent on

"Show partial command in status line
set showcmd


"UNIVERSAL CLIPBOARD
set clipboard=unnamed

"SHOW CURSOR POSITION
set cursorline
set ruler

"SEARCH
"Incremental search
set incsearch

"Highlight all search results
set hlsearch

"Ignore case in search
set ignorecase

"Ignore case turned off if search pattern includes Uppercase
set smartcase


"ENABLE AUTOCOMPLETION
set wildmode=longest,list,full


"SET ENCODING
set encoding=UTF-8


"VIM SETS WINDOW TITLE
set title


"MATCH BRACKETS
set mps=(:),{:},[:],<:>
set showmatch
set mat=2


"THEME
colorscheme lighthaus


"LINE NUMBER
set number
set termguicolors


"FOLDING
"Files not folded on opening
set nofoldenable
set foldmethod=indent
set foldnestmax=1
set foldlevel=2



"VIM-PLUG PLUGINGS
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
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
Plug 'mboughaba/i3config.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()


"SYNTAX
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


"NERDTREE
"Nerdtree toggle Ctrl+Shift+n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable  = '⮕'
let g:NERDTreeDirArrowCollapsible = '⬆'

"Open Nerdtree if no files were specified
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"RAINBOW PARENTHESES
let g:rainbow_active   = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_ctermfgs = ['green', 'yellow', 'cyan', 'magenta', 'red']


"VIMTEX SETTINGS
let g:tex_flavor                      = 'latex'
let g:vimtex_view_general_viewer      = 'zathura'
let g:vimtex_view_method              = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode            = 0
let g:vimtex_compiler_method          = 'latexmk'
set conceallevel=1
let g:tex_conceal                     = 'abdmg'


"SNIPPETS SETTINGS
set runtimepath+=~/.vim/ultisnippets
let g:UltiSnipsSnippetDir          = '~/.vim/UltiSnips'
let g:UltiSnipsEditSplit           = 'vertical'
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsJumpForwardTrigger  = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


"i3 CONFIG HIGHLIGHT
aug i3config_ft_detection
  au!
  au BufNewfile,BufRead ~/.config/i3/config set filetype=i3config
aug end


"AIRLINE
"let g:airline_theme = 'lighthaus'
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#left_sep = '||'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#branch#enabled = 1
"
"let g:airline_symbols = {}
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = ''
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'


"LIGHTLINE
if !has('gui_running')
  set t_Co=256
endif

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'lighthaus',
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'gitbranch': 'FugitiveHead',
      \   'fugitive': 'LightlineFugitive'
      \ },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch != '' ? ''.branch : ''
  endif
  return ''
endfunction


"GIT GUTTER
let g:gitgutter_enabled               = 1
let g:gitgutter_sign_added            = '+'
let g:gitgutter_sign_modified         = '♺'
let g:gitgutter_sign_modified_removed = '~'
let g:gitgutter_sign_removed          = '×'
