" ui config
"
syntax enable
set encoding=utf-8
set number
set cursorline  " hightlight current line
filetype indent on
set showmatch   " highlights matching parantheses
set incsearch   " search as characters are entered
set nohlsearch
set list
set listchars=tab:▸\ ,eol:¬


" spaces and tabs
"
set tabstop=4   " number of visual spaces per tab
set softtabstop=4   " number of spaces in a tab when editing
set expandtab   " tabs are spaces


" folding
"
set foldenable
set foldmethod=indent
" space to open/close folds
nnoremap <space> za
set foldmethod=indent   " for python folding

