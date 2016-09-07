"Line Numbering
set number
set relativenumber
syntax enable

"Backspace Behavior (help 'backspace')
set backspace=indent,eol,start

"tabstop
set softtabstop=4 "pressing tab
set shiftwidth=4 
set tabstop=4 "file onload

"Custom Filetype Associations
autocmd BufNewFile,BufRead,BufReadPost *.ts set filetype=javascript

"Per-Filetype settings
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

" Plug 'scrooloose/nerdcommenter'
" Plug 'majutsushi/tagbar'
" Plug 'bling/vim-airline'
" Plug 'scrooloose/syntastic'
" Plug 'itchyny/lightline.vim'
call plug#end()
