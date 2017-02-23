execute pathogen#infect()
syntax on
syntax enable
colorscheme molokai
let g:reharsh256=1
set t_Co=256
colorscheme molokai

filetype plugin indent on

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
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F12>"
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


" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

"Buffergator config stop

"Airline config start
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"Airline config stop
