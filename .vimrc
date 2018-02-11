execute pathogen#infect()
syntax on
syntax enable
colorscheme molokai
let g:reharsh256=1
set t_Co=256
colorscheme molokai

filetype plugin indent on

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F4>
set clipboard=unnamed

set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar. Fix for TagBar."


"Open new split panes to right and bottom
set splitbelow
set splitright


" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set expandtab
set number
let mapleader = "-"
set laststatus=2
" avoid automatic comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" save files shortcut
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>


set termencoding=utf-8

set smartindent
set autoindent
" no swap files
set nobackup
set noswapfile
" NERDTree toogle F12
silent! nmap <F12> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeFind<CR>

" let g:NERDTreeMapActivateNode="<F12>"
let g:NERDTreeMapPreview="<F11>"

" Autocomplete auto of the box
set wildmode=longest,list,full
set wildmenu


"  CtrlP config start
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
      \}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in
"version
" control. It also supports works with .svn, .hg, .bzr.
"let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlPMixed<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPMixed<cr>
nmap <leader>bm :CtrlP<cr>
nmap <leader>bs :CtrlPMRU<cr>
"CtrlP config end


"Airline config start
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"Airline config stop

" vim-mode
" -- Check code in current buffer
nmap ,o :PymodeLint<CR> 
let g:pymode_folding = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
nmap <C-N> :noh <CR>

"zf#j creates a fold from the cursor down # lines.
""f/string creates a fold from the cursor to string .
"zj moves the cursor to the next fold.
"zk moves the cursor to the previous fold.
"zo opens a fold at the cursor.
"zO opens all folds at the cursor.
"zc close a fold at the cursor.
"zm increases the foldlevel by one.
"zM closes all open folds.
"zr decreases the foldlevel by one.
"zR decreases the foldlevel to zero -- all folds will be open.
"zd deletes the fold at the cursor.
"zE deletes all folds.
""[z move to start of open fold.
""]z move to end of open fold.

 "Disable preview doc thingy
set completeopt-=preview
" ======= BEGIN tagbar =======
nmap <F8> :TagbarToggle<CR>
" ======= END tagbar =======

let g:tabman_toggle = '<F3>'
let g:tabman_number = 0

" Tabs navigation start
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"Tabs navitagion stop

"Force delete and paste for future ocurrences
vnoremap <leader>d "_d

set mouse+=a

map <C-c> "+y



"Fold html
"set foldmethod=indent
