" Plugin list
call plug#begin('D:\program\Vim\vimfiles\autoload')
Plug 'vim-airline/vim-airline'
" Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'D:\program\fzf'
" Plug 'junegunn/fzf.vim'
Plug 'shougo/neocomplete.vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
call plug#end()

" Airline
" let g:airline_theme='codedark' " Theme of airline

" NerdTree
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <leader>n :NERDTreeToggle<CR> " Shortcut for open nerdtree

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
" if executable('D:\program\ag\ag.exe')
"   " Use Ag over Grep
"   set grepprg=ag\ --nogroup\ --nocolor
"   " Use ag in CtrlP for listing files.
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   " Ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif

" IndentLine
let g:indentLine_enabled=1   " Settings for indentLine
let g:indentLine_char='|'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" Neocomplete
let g:neocomplete#enable_at_startup = 1 " Settings for neocomplete

" Tagbar
let g:tagbar_ctags_bin='D:\program\ctags\ctags.exe'
map <leader>t :TagbarToggle<CR>

" NerdCommenter
let g:NERDSpaceDelims=1

" EasyMotion
let g:EasyMotion_smartcase = 1
" let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat) " Repeat
