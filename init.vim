""""""""""
" General "
"""""""""""

set mouse=a

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

set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:block

autocmd Filetype python set colorcolumn=79
autocmd Filetype htmldjango set colorcolumn=100
autocmd Filetype html set colorcolumn=100



"""""""""""""""""""""""
" Custom Key Bindings "
"""""""""""""""""""""""

" Leader Key
" https://stackoverflow.com/a/446293

nnoremap <SPACE> <Nop>
let mapleader = " "

" Window Movements

nnoremap <leader>wc <C-w>c
nnoremap <leader>wr <C-w>r
nnoremap <leader>ws <C-w>s
nnoremap <leader>wv <C-w>v
nnoremap <leader>ww <C-w>w

nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

" Tab Movements

nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tn gt
nnoremap <leader>tp gT

" Test Search Highlighting

nnoremap <leader>hn :nohlsearch<CR>



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
autocmd vimenter * :AirlineTheme kolor


" tmhedberg/simpylfold

set nofoldenable
