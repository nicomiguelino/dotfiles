"""""""""""
" General "
"""""""""""

set number
set hlsearch
set novisualbell

set mouse=a

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set shiftround
set autoindent
set copyindent
set smarttab



""""""""""""""""""""""""""
" Vim Plugins (vim-plug) "
""""""""""""""""""""""""""


call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

call plug#end()


" junegunn/fzf

nnoremap <C-p> :FZF<CR>
