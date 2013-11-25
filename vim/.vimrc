" The basics
set number
syntax on
set showmatch
set ruler
set cul
set nocompatible

" Use ',' as the leader character for mappings
let mapleader = ','

" NeoBundle setup
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Solarized colorscheme
NeoBundle 'altercation/vim-colors-solarized'
let g:solarized_bold = 0
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Show guides for indent levels
NeoBundle 'nathanaelkane/vim-indent-guides'
nmap <leader>i :IndentGuidesToggle<CR>

" comment visual blocks with 'gc'
NeoBundle 'tpope/vim-commentary'

" automatically insert ending statements (ex. esac or fi in bash)
NeoBundle 'tpope/vim-endwise'

" Show diff in gutter
NeoBundle 'airblade/vim-gitgutter'
nmap <leader>g :GitGutterToggle<CR>
let g:gitgutter_enabled = 0

" File browser addons
NeoBundle 'scrooloose/nerdtree' " simple file browser
NeoBundle 'kien/ctrlp.vim' " fuzzy file searcher
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>

" Vim-airline
NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
set laststatus=2

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
