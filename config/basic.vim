" Basic settings
syntax enable                " Enable syntax check
syntax on                    " Enable syntax highlighting
filetype on
filetype plugin indent on    " Load plugins according to detected filetype
set nocompatible             " Not compatible with Vi
" set nowritebackup          " No backup when save file
" set nobackup               " No backup when save file
" set noswapfile             " No swapfile
set backup                   " Set backup files
set backupdir=$VIM\files\backup
set backupext=-vimbackup
set backupskip=
set directory=$VIM\files\swap " Set swap files
set updatecount=100
set undofile                 " Set undo files
set undodir=$VIM\files\undo
set vb t_vb=                 " Stop bell
set nowrap                   " Display auto new line
set laststatus=2             " Always show statusline
set display=lastline         " Show as much as possible of the last line
set showmatch                " Show match bracket
" set showmode               " Show current mode in command-line
set noshowmode               " No mode in command-line
set showcmd                " Show already typed keys when more are expected
set hlsearch                 " Hightlight the search
set incsearch                " Move to fit position after each char input
set hidden                   " Swith between buffers without saving first
set clipboard=unnamed        " Use system clipboard
set backspace=indent,eol,start " Better backspace
set ttyfast                  " Fast redrawing
set lazyredraw               " Only redraw when necessary
" set novisualbell           " Something wrong
" set paste                  " Keep format when pasting, something wrong
set ignorecase               " Ignore case when searching
set autoread                 " Auto read file when changed

" Tab and indent behavior settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab                " Something wrong
set shiftround
set autoindent
set smartindent
