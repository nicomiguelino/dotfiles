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
autocmd Filetype html set colorcolumn=100



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

" Aesthetics

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'crusoexia/vim-monokai'

" File Management

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" Code Readability

Plug 'mattesgroeger/vim-bookmarks'
Plug 'tmhedberg/simpylfold'
Plug 'sheerun/vim-polyglot'

" Code Formatting

Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'

call plug#end()


" junegunn/fzf

nnoremap <space><space> :FZF<CR>


" scrooloose/nerdtree

nmap <C-n> :NERDTreeToggle<CR><C-w>=
autocmd Filetype nerdtree set number relativenumber


" colorscheme

autocmd vimenter * colorscheme monokai


" vim-airline

let g:airline_powerline_fonts = 1
autocmd vimenter * :AirlineTheme simple


" tmhedberg/simpylfold

set nofoldenable
