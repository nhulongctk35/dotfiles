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

" Save file with leader + s
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

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
set scrolloff=8

" Fast moving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>r :%s/<C-r><C-w>/
