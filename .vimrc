""" Vundle init
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugins go here
Plugin 'arcticicestudio/nord-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/lightline.vim'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required

filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


""" General
filetype plugin on
filetype indent on


""" UI
syntax enable
set number
set showmatch                    " Highlights matching parantheses
set encoding=utf-8               " Set utf8 as standard encoding
set ruler                        " Always show current position
set laststatus=2                 " Always show the status line
colorscheme nord
" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif


""" Search
set ignorecase                   " Case insensitive
set smartcase                    " Use case if any caps used 
set incsearch                    " Show match as search proceeds
set nohlsearch                   " Disable search highlighting


""" Tabs & indenting
set autoindent
set smartindent
set expandtab                    " Use spaces instead of tabs
set shiftwidth=4                 " 1 tab == 4 spaces
set tabstop=4


""" Key bindings
map q <Nop>                      " unbind recording, never use it
noremap <F1> :Autoformat<CR>
set pastetoggle=<F2>             " binding for :set paste and :set nopaste


""" Misc
" Disable annoying beeping
set belloff=all
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Copy to OS's clipboard instead of internal buffer
" For this to work the vim version must support clipboard
" vim --version | grep clip
" If it doesn't, install a version that does, e.g. vim-gnome
set clipboard=unnamedplus


""" Plugin specific
" vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
" lightline
let g:lightline = {'colorscheme': 'nord',}
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


" Unsure
" set list
" set listchars=tab:▸\ ,eol:¬
