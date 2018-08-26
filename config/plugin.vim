" Plugin list
call plug#begin('D:\program\Vim\vimfiles\autoload')
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'D:\program\fzf'
" Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Airline
" let g:airline_theme='codedark' " Theme of airline

" NerdTree
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <C-o> :NERDTreeToggle<CR> " Shortcut for open nerdtree

" Ctrlp
let g:ctrlp_map='<c-p>'      " Open file with <c-p>
let g:ctrlp_cmd='CtrlP'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.ttf  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" IndentLine
let g:indentLine_enabled=1   " Settings for indentLine
let g:indentLine_char='|'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" Neocomplete [ Not installed ]
let g:neocomplete#enable_at_startup = 1 " Settings for neocomplete
