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

"gVim specific commands
if has('gui_running')
	"set guifont=Monaco:h16
endif
