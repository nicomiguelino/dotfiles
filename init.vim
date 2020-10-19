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

set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:block

autocmd Filetype python setlocal colorcolumn=79
autocmd Filetype htmldjango setlocal colorcolumn=100
autocmd Filetype html setlocal colorcolumn=100



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


"""""""""""
" Folding "
"""""""""""

set nofoldenable
set foldmethod=syntax
set foldlevel=99

augroup generic_folding
    au!
    au InsertLeave * normal zx
augroup END



""""""""""""""
" Aesthetics "
""""""""""""""

set background=dark
set fillchars+=vert:\|,fold:\-



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

" Code Formatting and Editing

Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" API Testins

Plug 'nicwest/vim-http'

call plug#end()


" junegunn/fzf

nnoremap <space><space> :FZF<CR>


" scrooloose/nerdtree

nmap <leader>n :NERDTreeToggle<CR><C-w>=
autocmd Filetype nerdtree set number relativenumber

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


" colorscheme

colorscheme gruvbox


" vim-airline

let g:airline_powerline_fonts = 1
autocmd vimenter * :AirlineTheme kolor
let g:airline_theme='kolor'


" nicwest/vim-http

let g:vim_http_split_vertically=1
