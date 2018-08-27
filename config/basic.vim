" Basic settings
syntax enable                " Enable syntax check
syntax on                    " Enable syntax highlighting
filetype on                  " Enable filetype check
filetype plugin indent on    " Load plugins according to detected filetype
set nocompatible             " Not compatible with Vi
set vb t_vb=                 " Stop bell
set nowrap                   " Display auto new line
set laststatus=2             " Always show statusline
set display=lastline         " Show as much as possible of the last line
set showmatch                " Show match bracket
" set showmode               " Show current mode in command-line
set noshowmode               " No mode in command-line
set showcmd                  " Show already typed keys when more are expected
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
set updatetime=100           " Set updatetime

" Backup settings
" set nowritebackup          " No writeback when save file
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

" Tab and indent behavior settings
set tabstop=4                " Set lenght of tab to 4 spaces
set shiftwidth=4             " >> indents by 4 spaces
set softtabstop=4            " Tab key indents by 4 spaces
set expandtab                " Use spaces instead of tabs
set shiftround               " >> indents to next multiple of 'shiftwidth'
set autoindent               " Indent according to previous line
set smartindent              " Smart indent
