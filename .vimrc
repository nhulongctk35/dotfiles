set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""""
""" LEADER
""""""""""""""

" Set leader before loading all plugins
let mapleader = ","

" General leader map
nnoremap <leader>v <C-w>v<C-w>l " Split, then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>p :bprev<cr> " Previous buffer
noremap <leader>/ :nohlsearch<cr> " Clear search highlight

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty.git'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-airline/vim-airline.git'

" If installed using git
Plug '~/.fzf'
" Initialize plugin system
call plug#end()

" Save file with leader + s
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

autocmd vimenter * NERDTree

" NerdTree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.pyc$', 'node_modules', '\.git']
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksFile = $HOME.'/.vim/.NERDTreeBookmarks'
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
nnoremap <C-f> :NERDTreeToggle<cr>

"""""""""""""""
""" GENERAL
"""""""""""""""
set nowrap

set number
set relativenumber

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Keep n lines off the edges of the screen when scrolling
set scrolloff=5

" Fast moving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

