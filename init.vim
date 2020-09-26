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
set noswapfile

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



""""""""""""""
" Formatting "
""""""""""""""

" Trim trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e



""""""""""""""
" Background "
""""""""""""""

set background=dark



""""""""""""""""""""""""""
" Vim Plugins (vim-plug) "
""""""""""""""""""""""""""


call plug#begin(stdpath('data') . '/plugged')

Plug 'crusoexia/vim-monokai'
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
Plug 'editorconfig/editorconfig-vim'

call plug#end()


" junegunn/fzf

nnoremap <space><space> :FZF<CR>


" scrooloose/nerdtree

nmap <C-n> :NERDTreeToggle<CR>
autocmd Filetype nerdtree set number relativenumber


" colorscheme
autocmd vimenter * colorscheme monokai


" vim-airline

let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1

autocmd vimenter * :AirlineTheme jellybeans


