colorscheme ron

call pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files = 50000

set runtimepath^=~/.vim/ftplugin/html.vim
runtime! ftplugin/html.vim

set noswapfile
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set textwidth=10000
set smartindent
set autoindent
set incsearch hlsearch
set number
set pastetoggle=<F2>
set colorcolumn=101
au BufEnter *.py set colorcolumn=121
au BufEnter *.php set colorcolumn=101

set mouse=a

set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set scrolloff=10              " keep at least 5 lines above/below
set sidescrolloff=10          " keep at least 5 lines left/right
set history=200

autocmd BufWritePre * :%s/\s\+$//e

syntax on

map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprev<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>
map tm :tabm<Space>
map tc :tabclose<CR>
map <CR> i<CR><Esc>l

"press ctrl + c to copy in visual selection mode (hence vmap)
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"press ctrl + v to paste in normal mode (hence nmap)
"nmap <C-V> :call setreg("\"",system("pbpaste"))<CR>p
"Press ctrl + g in normal mode to copy the file name into buffer
nnoremap <C-g> :call system("pbcopy", getreg("%"))<CR>
