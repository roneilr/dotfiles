" The basics
set number
syntax on
set showmatch
set ruler
set cul
set vb
set nocompatible

" Use ',' as the leader character for mappings
let mapleader = ','

" Ignore compiled files
set wildignore=*.o,*.pyc

" NeoBundle setup
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Solarized colorscheme
NeoBundle 'altercation/vim-colors-solarized'

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

" Git helpers (Gdiff, Gblame, Gread, Gwrite, etc.)
NeoBundle 'tpope/vim-fugitive'

" File browser addons
NeoBundle 'scrooloose/nerdtree' " simple file browser
NeoBundle 'kien/ctrlp.vim' " fuzzy file searcher
let NERDTreeShowHidden = 1
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
set wildignore+=*/node_modules/*,*.pyc,*/venv/*

" Vim-airline
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#branch#enabled = 1
set laststatus=2

" Extra syntax plugins
NeoBundle 'tpope/vim-markdown'

" Tab creation/navigation shortcuts (",#" to jump to tab #)
nmap <leader>c :tabnew<CR>
nmap <leader>n :tabnext<CR>
nmap <leader>v :tabprevious<CR>
let numcount = 1
while numcount <= 9
  execute "nmap <leader>" . numcount . " " . numcount . "gt"
  let numcount += 1
endwhile

" General vim shortcuts
nmap <leader>p :set paste!<CR>

" Search settings
set hlsearch
set scrolloff=5
set incsearch
set ignorecase
set smartcase

" Tab completion for commands
set wildmenu
set wildmode=longest:full,full

" Tab settings
set expandtab
set shiftwidth=2
set softtabstop=2
au FileType python setl sw=4 sts=4 et
set textwidth=90
set autoindent

" End NeoBundle configuration (no calls to NeoBundle below this line)
call neobundle#end()

" Finish colorscheme initialization
let g:solarized_bold = 0
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Required per NeoBundle docs
filetype plugin indent on

" Verify NeoBundle installation
NeoBundleCheck
