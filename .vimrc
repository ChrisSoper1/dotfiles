"Line Numbering
set number

"Enable syntax highlighting
syntax enable

"Always show statusbar
set laststatus=2

" Enable mouse support
set mouse=a

"File Encoding
set encoding=utf-8
scriptencoding utf-8

" Use block cursor in cygwin/mintty
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Remap leader key (default '\')
let mapleader = "\<space>"

" Leader keybindings (nmap=normal mode; vmap=visual mode, nore=non-recursive)
nnoremap <Leader>w :w<CR>
nnoremap <Leader>h :noh<CR>

nmap <Leader>y "+y
nmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P

vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P

"Backspace Behavior (help 'backspace')
set backspace=indent,eol,start

" tabstop
set tabstop=4 " Width of the '\t' character
set softtabstop=4 "pressing tab
set shiftwidth=4 " Automatic Indentation and using '<' or '>'

" File Extension to Filetype Mappings
au BufNewFile,BufRead,BufReadPost *.ts set filetype=javascript

" Per-Filetype settings
au FileType html set tabstop=2|set shiftwidth=2|set softtabstop=2
au FileType css set tabstop=2|set shiftwidth=2|set softtabstop=2
au FileType javascript set tabstop=2|set shiftwidth=2|set softtabstop=2

"linewraps
set nowrap 
set textwidth=0 
set wrapmargin=0

" Autoupdate Content
set autoread

"search tools
set smartcase
set hlsearch
set showmatch
set ignorecase

"Tab Change
nmap \t :tabn <CR>

"Buffertools
nmap \n :bnext! <CR>

"Remove Ex mode
nnoremap Q <nop>

"Keybinds
"Autoindent file
nmap <F7> mzgg=G`z 

" plug.vim package manager configuration
call plug#begin('~/.vim/plugged')

" Tmux pane motion integration
Plug 'christoomey/vim-tmux-navigator'

" Syntax highlighting for json
Plug 'elzr/vim-json', { 'for' : 'json' }

" Syntax highlighting for html5
Plug 'othree/html5.vim', { 'for' : 'html' }

" Monokai color scheme (brown)
Plug 'tomasr/molokai'

" Syntax coloring for markdown
Plug 'tpope/vim-markdown', { 'for' : ['md', 'markdown'] }

" Syntax highlighting for javascript
Plug 'pangloss/vim-javascript', { 'for' : ['js', 'javascript'] }

" Powerline-Like Statusbar Conf
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'wombat' }

" Plug 'scrooloose/nerdcommenter'
" Plug 'majutsushi/tagbar'
" Plug 'bling/vim-airline'
" Plug 'scrooloose/syntastic'
call plug#end()
