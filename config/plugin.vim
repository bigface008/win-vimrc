" Plugin settings

" Plugin list
call plug#begin('D:\program\Vim\vimfiles\autoload')
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'D:\program\fzf'
" Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

" Plugin config
" let g:airline_theme='codedark' " Theme of airline
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <C-o> :NERDTreeToggle<CR> " Shortcut for open nerdtree
" let g:ctrlp_map='<c-p>'      " Open file with <c-p>
" let g:ctrlp_cmd='CtrlP'
let g:indentLine_enabled=1   " Settings for indentLine
let g:indentLine_char='|'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'
let g:neocomplete#enable_at_startup = 1 " Settings for neocomplete
