"---- colorscheme (default) ----
colorscheme default
syntax on

"---- leader ----
noremap <SPACE> <Nop>
let mapleader = " "

"---- indentation ----
set tabstop=2
set shiftwidth=2
set expandtab
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"---- line numbers ----
set number
set relativenumber
noremap <Leader>r :set relativenumber!<CR>
noremap <Leader>n :set number!<CR>

"---- file handling ----
set autoread
set nobackup
set noswapfile

"---- search ----
set nohlsearch
set ignorecase
set smartcase
set magic
set path+=**
set wildmenu
noremap <Leader>s :set hlsearch!<CR>

"---- highlight ----
set showmatch
noremap <Leader>w :set cc-=120<CR>
noremap <Leader>W :set cc+=120<CR>
noremap <Leader>q :set cc-=80<CR>
noremap <Leader>Q :set cc+=80<CR>

"---- splits ----
noremap <Leader>\ :vsplit<CR>
noremap <Leader>/ :split<CR>
noremap <Leader>h <c-w>h
noremap <Leader>j <c-w>j
noremap <Leader>k <c-w>k
noremap <Leader>l <c-w>l

"---- navigation ----
"inoremap <Leader><Space> <Esc>
noremap <Leader>p :set wrap !<CR>

