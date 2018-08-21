source $VIMRUNTIME/vimrc_example.vim

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

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
set undofile                  " Set undo files
set undodir=$VIM\files\undo

set vb t_vb=                 " Stop bell
set nowrap                   " Display auto new line
set laststatus=2             " Always show statusline
set display=lastline         " Show as much as possible of the last line
set showmatch                " Show match bracket
" set showmode               " Show current mode in command-line
set showcmd                  " Show already typed keys when more are expected
set hlsearch                 " Hightlight the search
set incsearch                " Move to fit position after each char input
set hidden                   " Swith between buffers without saving first
set clipboard=unnamed        " Use system clipboard
set backspace=indent,eol,start " Better backspace
set ttyfast                  " Fast redrawing
set lazyredraw               " Only redraw when necessary
" set novisualbell           " Something wrong
set paste                    " Keep format when pasting
set ignorecase               " Ignore case when searching

" Tab and indent behavior settings
set tabstop=4                "
set softtabstop=4            " Tab key indents by 4 spaces.
set shiftwidth=4             " >> indents by 4 spaces.
set shiftround               " >> indents to next multiple of 'shiftwidth'
set expandtab                " Use spaces instead of tabs.
set autoindent               " Indent accroding to previous line.
set smartindent              "

" UI settings
set nu                       " Show line number
set ruler                    " Set ruler
set guifont=Source_Code_Variable:h11:b:cDEFAULT " Set font type
" set guifont=Courier_new:h11:b:cDEFAULT
" set guifont=Fira_Code:h11:b:cDEFAULT
" set guifont=Fantasque_Sans_Mono:h12:b:cDEFAULT
set gcr=a:block-blinkon0     " No flashing cursor
" set gcr=a:block-blinkon0,i:ver5-blinkon0 " Set cursor type
set listchars=tab:>-,trail:- " Show tab and space
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" GUI settings
if has("gui_running")
au GUIEnter * simalt ~x      " Maximize gui window
" set background=dark        " Set background
colorscheme molokai          " Set theme
set cursorline               " Show line cursor
set cursorcolumn             " Shoe column cursor
set cc=80                    " Hightlight column 80
set guioptions-=m            " Hide menu bar
set guioptions-=T            " Hide tool bar
set guioptions-=L            " Hide left scroll bar
set guioptions-=r            " Hide right scroll bar
set guioptions-=b            " Hide bottom scroll bar
" set showtabline=0          " Hide tab line
endif

" Code settings
" set termencoding=cp936
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
source $VIMRUNTIME/delmenu.vim " Solve messy code of menu
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8 " Solve messy code of console

" Plugin list
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " Plugins list starts from here
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

" Plugin settings
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <C-o> :NERDTreeToggle<CR> " Shortcut for open nerdtree
let g:ctrlp_map='<c-p>'      " Open file with <c-p>
let g:ctrlp_cmd='CtrlP'
