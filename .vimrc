""" Vundle
set nocompatible                 " be iMproved, required
filetype off                     " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugins here
Plugin 'arcticicestudio/nord-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Chiel92/vim-autoformat'
Plugin 'itchyny/lightline.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

call vundle#end()                " required

filetype plugin indent on        " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


""" UI
syntax enable
set number
set showmatch                    " Highlights matching parantheses
set encoding=utf-8               " Set utf8 as standard encoding
set ruler                        " Always show current position
set laststatus=2                 " Always show the status line
set noshowmode                   " Redundant (lightline.vim displays the mode info in the statusline)
set mouse=a                      " Enable mouse
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


""" Indenting & tabs
set autoindent
set smartindent
set expandtab                    " Use spaces instead of tabs
set shiftwidth=4                 " 1 tab == 4 spaces
set tabstop=4


""" Key bindings
map q <Nop>                      " unbind recording, never use it
map <C-n> :NERDTreeToggle<CR>
map <leader>f :Autoformat<CR>    " \f to autoformat code
set pastetoggle=<leader>z        " \z to toggle paste mode


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


""" Plugin specific stuff
" vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
" lightline
let g:lightline = {'colorscheme': 'nord',}
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" NERDTree
" This closes vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Unsure
" set list
" set listchars=tab:▸\ ,eol:¬

