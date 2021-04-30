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

autocmd Filetype python setlocal colorcolumn=79
autocmd Filetype htmldjango setlocal colorcolumn=100
autocmd Filetype html setlocal colorcolumn=100
autocmd Filetype javascript setlocal colorcolumn=80



"""""""""""""""""""""""
" Custom Key Bindings "
"""""""""""""""""""""""

" Leader Key
" https://stackoverflow.com/a/446293

nnoremap <SPACE> <Nop>
let mapleader = " "

" Window Movements
" - Uses <SPACE>w instead of <C-w>

nnoremap <Leader>w <C-w>

" Tab Movements

nnoremap <Leader>to :tabnew<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tn gt
nnoremap <Leader>tp gT

" Buffer Movements
nnoremap <Leader>bd :bd<CR>

" Test Search Highlighting

nnoremap <Leader>hn :nohlsearch<CR>



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

autocmd Filetype htmldjango setlocal foldmethod=manual

augroup generic_folding
    au!
    au InsertLeave * normal zx
augroup END



""""""""""""""
" Aesthetics "
""""""""""""""

set background=dark
set fillchars+=vert:\|,fold:\-

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



""""""""""""""""""""""""""
" Vim Plugins (vim-plug) "
""""""""""""""""""""""""""


call plug#begin(stdpath('data') . '/plugged')

" Aesthetics

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'crusoexia/vim-monokai'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'

" File Management

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" Code Readability

Plug 'mattesgroeger/vim-bookmarks'
Plug 'tmhedberg/simpylfold'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/colorizer'

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

colorscheme monokai
let g:VM_theme = 'spacegray'


" vim-airline

let g:airline_powerline_fonts = 1
autocmd vimenter * :AirlineTheme simple
let g:airline_theme='simple'


" nicwest/vim-http

let g:vim_http_split_vertically=1


" mattn/emmet-vim

let g:user_emmet_leader_key='<C-h>'
