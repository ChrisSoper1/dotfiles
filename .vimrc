"Line Numbering
set number

"Backspace Behavior (help 'backspace')
set backspace=indent,eol,start

"Remember Folds
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

"tabstop
set softtabstop=4 "pressing tab
set shiftwidth=4 
set tabstop=4 "file onload

"linewraps
set nowrap 
set textwidth=0 
set wrapmargin=0

syntax enable

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
	set guifont=Monaco:h16
endif
