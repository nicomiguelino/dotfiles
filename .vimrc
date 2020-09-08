""""""""""
" General "
"""""""""""

set number
set relativenumber
set hlsearch
set hidden
set incsearch 
set novisualbell
set ignorecase

set mouse=a

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set shiftround
set autoindent
set copyindent
set smarttab

autocmd Filetype python set colorcolumn=79
autocmd Filetype htmldjango set colorcolumn=100



""""""""""""""""""""""""""
" Vim Plugins (vim-plug) "
""""""""""""""""""""""""""

call plug#begin('~/.vim/autoload')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'

call plug#end()


" morhetz/gruvbox

autocmd vimenter * colorscheme gruvbox
set background=dark


" vim-airline

let g:airline_theme='simple'


" junegunn/fzf

nnoremap <C-p> :FZF<CR>


" scrooloose/nerdtree

nmap <C-n> :NERDTreeToggle<CR>


