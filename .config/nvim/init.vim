"---- load plugins ----
execute pathogen#infect()

"---- markdown block syntax hilight ----
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r', 'yaml', 'json', 'dockerfile']

"---- colorscheme (default) ----
" colorscheme default

"---- colorscheme (solarized) ----
" let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
" let g:solarized_visibility = 'high'
colorscheme solarized

"---- airline ----
let g:airline_powerline_fonts = 1
"let g:airline_solarized_bg = ''

"---- rainbow ----
let g:rainbow_active = 1

"---- leader ----
noremap <SPACE> <Nop>
let mapleader = " "

"---- indentation ----
set tabstop=2
set shiftwidth=2
set noexpandtab
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"---- ale ----
let g:alw_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

"---- vim-yaml-folds----
set foldlevelstart=8

"---- ansible-vim ----
let g:ansible_template_syntaxes = { '*.yml.j2': 'yaml' }

"---- indentLine ----
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = "inc"
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 0
noremap <Leader>i :IndentLinesToggle<CR>

"---- line numbers ----
set number
set relativenumber
noremap <Leader>r :set relativenumber!<CR>

"---- file handling ----
set autoread
set nobackup

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
noremap <Leader>w :set cc=0<CR>
noremap <Leader>W :set cc=120<CR>

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

