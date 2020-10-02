" Line numbering
set number
"set relativenumber

" Syntax highlighting
syntax enable
colorscheme desert

" Auto-create folds according to syntax rules
set foldmethod=syntax

" Open folds when file is loaded
set foldlevel=10

" Line wrapping
set nowrap
set textwidth=0
set wrapmargin=0

" Convert tabs to spaces
set expandtab

" auto-update when file is changed externally
set autoread

" Search options
set smartcase
set hlsearch
set showmatch
set ignorecase

" Toggle Paste mode (no autoindent) with F2
set pastetoggle=<F2>

" Always show statusbar
set laststatus=2

" Enable mouse support
set mouse=a
set ttymouse=xterm2

" Enable mouse support
set mouse=a

" File Encoding
set encoding=utf-8
scriptencoding utf-8

" Remap leader key (default '\')
let mapleader = "\<space>"

" Use block cursor in cygwin/mintty
"let &t_ti.="\e[1 q"
"let &t_SI.="\e[5 q"
"let &t_EI.="\e[1 q"
"let &t_te.="\e[0 q"

" Configure ListChars (use ':set list' to toggle)
set listchars=eol:¬,tab:>·,nbsp:•,trail:•

" Backspace behavior (help 'backspace')
set backspace=indent,eol,start

" Tab handling
set tabstop=4     " Width of the '\t' character
set softtabstop=4 " pressing tab
set shiftwidth=4  " Automatic Indentation and using '<' or '>'

" Filetype to file extension mappings
au BufNewFile,BufRead,BufReadPost *.ts set filetype=javascript
au BufNewFile,BufRead,BufReadPost *.scss set filetype=scss
au BufNewFile,BufRead,BufReadPost *.coffee set filetype=coffeescript
au BufNewFile,BufRead,BufReadPost *.svg set filetype=xml
au BufNewFile,BufRead,BufReadPost *.yaml set filetype=yaml
au BufNewFile,BufRead,BufReadPost *.yml set filetype=yaml

" Per-Filetype overrides
au FileType html set ts=2|set sw=2|set sts=2
au FileType css set ts=2|set sw=2|set sts=2
au FileType scss set ts=2|set sw=2|set sts=2
au FileType javascript set ts=2|set sw=2|set sts=2
au FileType typescript set ts=2|set sw=2|set sts=2
au FileType coffeescript set ts=2|set sw=2|set sts=2
au FileType yaml set ts=2|set sw=2|set sts=2

" Keybindings 
" Keymap syntax: [mode][nore]map
" modes: n=normal v=visual
nnoremap <Leader>w :w<CR>
nnoremap <Leader>h :noh<CR>
nnoremap <Leader>t :tabn<CR>
nnoremap <Leader>n :bnext!<CR>
nnoremap <Leader>l :set list! list?<CR>
nnoremap Q <nop>

nmap <Leader>n :NERDTreeToggle<CR>
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
Plug 'preservim/nerdtree'

" Syntax highlighting
Plug 'othree/html5.vim', { 'for': ['html'] } " HTML
Plug 'elzr/vim-json', { 'for' : 'json' } " JSON
Plug 'tpope/vim-markdown', { 'for' : ['md', 'markdown'] } " Markdown
Plug 'JulesWang/css.vim', { 'for' : ['css', 'scss', 'sass'] } " css
Plug 'cakebaker/scss-syntax.vim', { 'for' : ['scss'] } " scss
Plug 'pangloss/vim-javascript', { 'for' : ['html', 'js', 'javascript'] } " Javascript
Plug 'Matt-Deacalion/vim-systemd-syntax', { 'for' : ['service', 'unit', 'socket', 'target'] } " Systemd
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee','coffeescript'] } " Coffeescript
Plug 'leafgarland/typescript-vim', { 'for': ['ts','typescript'] } " Typescript
Plug 'wannesm/wmgraphviz.vim', { 'for' : ['gv', 'dot'] } " Graphviz

call plug#end()
