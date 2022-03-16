set encoding=utf8
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12
set nocompatible
set showmatch
set ignorecase
set mouse=va
set hlsearch
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set wildmode=longest,list
set clipboard=unnamedplus
set cursorline
set ttyfast
set noswapfile
set backupdir=~/.cache/vim
set autochdir
set confirm
set title

if (has("termguicolors"))
	set termguicolors
endif

colorscheme dracula
syntax on
filetype plugin indent on
filetype plugin on

nnoremap <C-b> :NERDTreeToggle<CR>

let g:indentLine_setColors = 1
map <c-k>i :IndentLinesToggle<cr>

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='dracula'

nnoremap <M-Right> :bn<CR>
nnoremap <M-Left> :bp<CR>
nnoremap <c-x> :bp\|bd #<CR>

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i

vmap <C-c> y
vmap <C-x> x
imap <C-v> <esc>P

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_completion_enabled = 0

nnoremap <C-s> :m .+1<CR>==
nnoremap <C-w> :m .-2<CR>==
inoremap <C-s> <Esc>:m .+1<CR>==gi
inoremap <C-w> <Esc>:m .-2<CR>==gi
vnoremap <C-s> :m '>+1<CR>gv=gv
vnoremap <C-w> :m '<-2<CR>gv=gv

"map <C-s> :w<CR>
"map q :quit<CR>
"map <C-q> :quit!<CR>


