set nocompatible

"Enable Mouse Usage in all modes
set mouse=a 

" Turn on syntax highlighting
syntax on

" Turn on text wrapping
set wrap

" Use X clipboard
set clipboard=unnamedplus

" Enable Syntax Highlighting for many programming languages
filetype plugin on

" Show Line Numbers
set number relativenumber
" set relativenumber

" Enable Spell Checking
" set spell

set tabstop=4
set shiftwidth=4

set lcs=eol:¬
set list

set expandtab
set showcmd

call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'tomlion/vim-solidity'
Plug 'wincent/command-t'
Plug 'tpope/vim-surround'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'vim-latex/vim-latex'

call plug#end()

" Disable training wheels
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype plugin on
let g:tex_flavor='latex'
let g:Tex_FoldedSections     = ""
let g:Tex_FoldedEnvironments = ""
let g:Tex_FoldedMisc = ""
let g:Imap_UsePlaceHolders = 0
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=1 -interaction=nonstopmode $*'
let theuniqueserv = expand("%:r")

" Break lines when they exceed 80 characters
set tw=80 linebreak

" Fix and set leader key to <SPACE>
nnoremap <SPACE> <NOP>
let mapleader=" "

" Save and Quit
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>

" Set nerdtree to leader+b
nmap <leader>b :NERDTree<CR>

" Auto-indent the entire file
nmap <leader>I gg=G`.
