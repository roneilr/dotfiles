" The basics
set number
colorscheme desert
syntax on
set showmatch
set ruler
set cul

" Search settings
set hlsearch
set scrolloff=5
set incsearch
set ignorecase

" Tab settings
set tabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set smartindent

" Settings selected from http://esi.namok.be/brol/vim/vimrc.html
" Vim is not vi
set nocompatible
" See parenthesis balance
set showmatch
" Set visual bell (turn off the beep sounds and replace it by flash screen)
set vb
" I want always see my statusline with filename, size and some other things
set laststatus=2
set statusline=%a\ %F%1*%m%*%10{getfsize(expand('%'))}%10l/%L
highlight StatusLine term=bold cterm=bold ctermbg=9
" I autocomplete like bash
set wildmode=longest,list
" Comment (visual bloc)
" Highlight a bloc and press ;c or ;j. The bloc is commented
vmap ;c <ESC>`<i/*<cr><ESC>`>a<cr>*/<ESC>
vmap ;j <ESC>`<i/**<cr><ESC>`>a<cr>*/<ESC>

