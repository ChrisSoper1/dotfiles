" Line numbering
set number

" Syntax highlighting
syntax enable

" Line wrapping
set nowrap 
set textwidth=0 
set wrapmargin=0

" Autoupdate when file is changed externally
set autoread

" Search options
set smartcase
set hlsearch
set showmatch
set ignorecase

" Always show statusbar
set laststatus=2

" Enable mouse support
set mouse=a

" File Encoding
set encoding=utf-8
scriptencoding utf-8

" Remap leader key (default '\')
let mapleader = "\<space>"

" Use block cursor in cygwin/mintty
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Backspace behavior (help 'backspace')
set backspace=indent,eol,start

" Tab handling
set tabstop=4     " Width of the '\t' character
set softtabstop=4 " pressing tab
set shiftwidth=4  " Automatic Indentation and using '<' or '>'

" Filetype to file extension mappings
au BufNewFile,BufRead,BufReadPost *.ts set filetype=javascript

" Per-Filetype overrides
au FileType html set tabstop=2|set shiftwidth=2|set softtabstop=2
au FileType css set tabstop=2|set shiftwidth=2|set softtabstop=2
au FileType javascript set tabstop=2|set shiftwidth=2|set softtabstop=2

" Keybindings 
" Keymap syntax: [mode][nore]map
" modes: n=normal v=visual
nnoremap <Leader>w :w<CR>
nnoremap <Leader>h :noh<CR>
nnoremap <Leader>t :tabn<CR>
nnoremap <Leader>n :bnext!<CR>
nnoremap Q <nop>

nmap <Leader>y "+y
vmap <Leader>y "+y
nmap <Leader>d "+d
vmap <Leader>d "+d
nmap <Leader>p "+p
vmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>P "+P

" plug.vim package manager configuration
call plug#begin('~/.vim/plugged')

" Utilities
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'

" Syntax highlighting
Plug 'elzr/vim-json', { 'for' : 'json' } " JSON
Plug 'othree/html5.vim', { 'for' : 'html' } " HTML5 Tags
Plug 'wannesm/wmgraphviz.vim', { 'for' : ['gv', 'dot'] } " Graphviz
Plug 'tpope/vim-markdown', { 'for' : ['md', 'markdown'] } " Markdown
Plug 'pangloss/vim-javascript', { 'for' : ['js', 'javascript'] } " Javascript
Plug 'Matt-Deacalion/vim-systemd-syntax' " Systemd

" Color schemes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'

call plug#end()

let g:lightline = { 'colorscheme': 'wombat' }
