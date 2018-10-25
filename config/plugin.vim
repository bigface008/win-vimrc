" Plugin list
call plug#begin('D:\program\Vim\vimfiles\autoload')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'D:\program\fzf'
" Plug 'junegunn/fzf.vim'
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet.vim'
Plug 'shougo/neosnippet-snippets'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'tmhedberg/simpylfold'
call plug#end()

" Airline -------------------------------------------------------------------- "
" let g:airline_theme='codedark'       " Theme of airline.
let g:airline#extensions#tabline#enabled = 1 " Enable tabline.
let g:airline#extensions#tabline#tab_nr_type = 1 " Tab number.
let g:airline#extensions#tabline#show_tab_nr = 1 " Tab number.
let g:airline_theme='base16'

" NerdTree ------------------------------------------------------------------- "
let NERDTreeShowHidden=1               " Show hidden file.
let NERDTreeShowLineNumbers=1          " Show line number.
let NERDTreeWinPos='left'              " Postion of nerdtree.
let NERDTreeWinSize=30                 " Size of nerdtree.
let NERDTreeIgnore=['\.pyc$', '\~$']   " Ignore files in NERDTree.
map <leader><leader>n :NERDTreeToggle<CR> " Shortcut for open nerdtree

" Ctrlp ---------------------------------------------------------------------- "
let g:ctrlp_map='<c-p>'                " Open file with <c-p>
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

" IndentLine ----------------------------------------------------------------- "
let g:indentLine_enabled=1             " Start indentLine.
let g:indentLine_char='|'              " Set sign for number of tabs.
let g:indentLine_leadingSpaceEnabled=1 " Show leading spaces.
let g:indentLine_leadingSpaceChar='·'  " Set sign for leading spaces.

" Neocomplete ---------------------------------------------------------------- "
let g:acp_enableAtStartup = 0          " Disable AutoComplPop.
let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
let g:neocomplete#enable_smart_case = 1 " Use smartcase.
let g:neocomplete#max_list = 15        " Max number of list.
let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $VIM.'\files\.vimshell_hist',
    \ 'scheme' : $VIM.'\files\.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Tagbar --------------------------------------------------------------------- "
let g:tagbar_ctags_bin='D:\program\ctags\ctags.exe'
map <leader><leader>t :TagbarToggle<CR>

" NerdCommenter -------------------------------------------------------------- "
let g:NERDSpaceDelims=1                " Put one space between comment and first word

" EasyMotion ----------------------------------------------------------------- "
let g:EasyMotion_do_mapping = 0        " Disable default mappings
let g:EasyMotion_smartcase = 1         " Smart case
" let g:EasyMotion_startofline = 0     " Keep cursor colum when JK motion
" map f <Plug>(easymotion-prefix)
" map ff <Plug>(easymotion-s)
nmap <leader>w <Plug>(easymotion-overwin-w)
nmap <leader>e <Plug>(easymotion-overwin-e)
" map fh <Plug>(easymotion-linebackward)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
" map fl <Plug>(easymotion-lineforward)
" map f. <Plug>(easymotion-repeat)

" SimplyFold ----------------------------------------------------------------- "
let g:SimpylFold_docstring_preview=1
