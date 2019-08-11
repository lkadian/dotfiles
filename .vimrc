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
Plugin 'itchyny/lightline.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
" May want to stop using this in the future and use linting from ale...
Plugin 'Chiel92/vim-autoformat'
Plugin 'ycm-core/YouCompleteMe'
" For this plugin, you need to install a linter for the language,
" e.g. flake8 for python
" Also, requires Vim 8 or higher
Plugin 'dense-analysis/ale'

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


""" General
set nomodeline
set hidden                       "  hides buffers instead of closing them
" Disable annoying beeping
set belloff=all
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Copy to OS's clipboard instead of internal buffer
" For this to work the vim version must support clipboard
" vim --version | grep clip
" If it doesn't, install a version that does, e.g. vim-gnome / vim-gtk
set clipboard=unnamedplus


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
" These two lines map dd to the black hole register, since I don't use cut
nnoremap d "_d
vnoremap d "_d
map q <Nop>                      " unbind recording, never use it
set pastetoggle=<leader>z        " \z to toggle paste mode
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>


""" Plugin-specific
" vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
" lightline
let g:lightline = {'colorscheme': 'nord',}
" Autoformat
map <leader>f :Autoformat<CR>    " \f to autoformat code
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" NERDTree
map <C-n> :NERDTreeToggle<CR>


""" Addendum
" set list
" set listchars=tab:▸\ ,eol:¬

