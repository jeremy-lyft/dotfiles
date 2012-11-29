colorscheme ron

call pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set shiftwidth=2
"set softtabstop=2
"set expandtab
set tabstop=2
set textwidth=80
set smartindent
set autoindent
set incsearch hlsearch
set number
set pastetoggle=<F2>
set colorcolumn=81

set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set smarttab                  " tab and backspace are smart
set scrolloff=20              " keep at least 5 lines above/below
set sidescrolloff=20          " keep at least 5 lines left/right
set history=200
"set backspace=indent,eol,start
"set linebreak
"set cmdheight=1               " command line two lines high
"set undolevels=1000           " 1000 undos
"set updatecount=100           " switch every 100 chars
"set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
"set ttyfast                   " we have a fast terminal
"set noerrorbells              " No error bells please
"set shell=bash
"set fileformats=unix
"set ff=unix
"filetype on                   " Enable filetype detection
"filetype indent on            " Enable filetype-specific indenting
"filetype plugin on            " Enable filetype-specific plugins
"set wildmode=longest:full
"set wildmenu                  " menu has tab completion
"let maplocalleader=','        " all my macros start with ,
"set laststatus=2


autocmd BufWritePre * :%s/\s\+$//e
"autocmd vimenter * NERDTree

syntax on

map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprev<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>
map tm :tabm<Space>
map <CR> i<CR><Esc>l

"press ctrl + c to copy in visual selection mode (hence vmap)
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"press ctrl + v to paste in normal mode (hence nmap)
"nmap <C-V> :call setreg("\"",system("pbpaste"))<CR>p

ab ipdb import ipdb; ipdb.set_trace()
