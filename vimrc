filetype plugin indent on

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set encoding=utf-8
set fileencoding=utf-8
set background=dark
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number              " Enable line numbers

" Commenting (vim-commentary)
vmap \ gc
nmap \ gcc

" Go specific settings
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" Ruby specific settings
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
