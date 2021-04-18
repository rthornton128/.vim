filetype plugin indent on

set encoding=utf-8      " Default buffer encoding
set fileencoding=utf-8  " Default file encoding
set background=dark     " Dark mode
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch            " Highlight search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number              " Enable line numbers
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set updatetime=100     " How long between vim does updates (raise if issues)

set termguicolors
colorscheme gruvbox

" Airline (Status Bar)
let g:airline_theme='gruvbox'
" requires powerline fonts to be installed
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Commenting (vim-commentary)
vmap <leader>\ gc
nmap <leader>\ gcc

" Search
nmap <leader>s :FZF<CR>
nmap <leader>sg :GFiles<CR>

" Window movement
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>

" ALE (Async Lint Engine)
let g:ale_set_signs=1
nmap <leader>gd :ALEGoToDefinition<CR>

" Go specific settings
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" Ruby specific settings
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
