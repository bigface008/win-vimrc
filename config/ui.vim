" UI settings
set nu                       " Show line number
set ruler                    " Set ruler
" set guifont=Source_Code_Variable:h11:b:cDEFAULT " Set font type
" set guifont=Courier_new:h11:b:cDEFAULT
" set guifont=Fira_Code:h11:b:cDEFAULT
set guifont=Fantasque_Sans_Mono:h12:b:cDEFAULT
" set guifont=Consolas:h12
set gcr=a:block-blinkon0     " No flashing cursor
" set gcr=a:block-blinkon0,i:ver5-blinkon0 " Set cursor type
set list
set listchars=tab:>\ ,trail:.,extends:>,precedes:<,nbsp:. " Show tab and space
" highlight WhitespaceEOL ctermbg=red guibg=red
" match WhitespaceEOL /\s\+$/

" GUI config
if has("gui_running")
au GUIEnter * simalt ~x      " Maximize gui window
" set background=dark        " Set background
colorscheme molokai          " Set theme
set cursorline               " Show line cursor
set cursorcolumn           " Show column cursor
set cc=80                    " Hightlight column 80
set guioptions-=m            " Hide menu bar
set guioptions-=T            " Hide tool bar
set guioptions-=L            " Hide left scroll bar
set guioptions-=r            " Hide right scroll bar
set guioptions-=b            " Hide bottom scroll bar
" set showtabline=0          " Hide tab line
endif
