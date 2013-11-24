" The basics
set number
syntax on
set showmatch
set ruler
set cul
set nocompatible

" NeoBundle setup
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle addons
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'

" Vim-airline options
let g:airline_powerline_fonts = 1
set laststatus=2

" Solarized colorscheme
let g:solarized_bold=0
let g:solarized_contrast = "high"
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Search settings
set hlsearch
set scrolloff=5
set incsearch
set ignorecase

" Tab settings
set expandtab
set shiftwidth=2
set softtabstop=2
au FileType python setl sw=4 sts=4 et
set textwidth=80
set autoindent
filetype plugin indent on

" Settings selected from http://esi.namok.be/brol/vim/vimrc.html
" See parenthesis balance
set showmatch
" Set visual bell (turn off the beep sounds and replace it by flash screen)
set vb
" I autocomplete like bash
set wildmode=longest,list
" Comment (visual bloc)
" Highlight a bloc and press ;c or ;j. The bloc is commented
vmap ;c <ESC>`<i/*<cr><ESC>`>a<cr>*/<ESC>
vmap ;j <ESC>`<i/**<cr><ESC>`>a<cr>*/<ESC>
