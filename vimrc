execute pathogen#infect()
set autoindent
set smartindent

syntax on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set backspace=indent,eol,start
set number
set incsearch
set background=dark

set showmatch
set colorcolumn=81
set noswapfile
set guifont=Monospace:h20
colorscheme onedark
" colorscheme solarized

autocmd BufWritePre * :%s/\s\+$//e
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rking/ag.vim'
Plug 'sheerun/vim-polyglot'
Plug 'elixir-lang/vim-elixir'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'scrooloose/nerdcommenter'
Plug 'thinca/vim-ref'
Plug 'janko-m/vim-test'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mileszs/ack.vim'
Plug 'archSeer/elixir.nvim'
Plug 'tpope/vim-fugitive'

let g:solarized_termcolors=256

let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

call plug#end()

" Insult me for using cursor keys
map <left>  :echo "No cursor, you idiot"<cr>
map <right> :echo "No cursor, you idiot"<cr>
map <up>    :echo "No cursor, you idiot"<cr>
map <down>  :echo "No cursor, you idiot"<cr>

let mapleader=","
nmap <leader>d :set background=dark<cr>
nmap <leader>l :set background=light<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <silent> <leader>t :TestNearest<cr>
nmap <silent> <leader>T :TestFile<cr>
nmap <silent> <leader>a :TestSuite<cr>
