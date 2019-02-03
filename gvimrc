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

" Disable Powerline
let g:powerline_loaded = 1

" Disable training wheels
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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
nmap <leader>b :NERDTreeToggle<CR>

" Auto-indent the entire file
nmap <leader>I gg=G`.

let g:powerline_pycmd = "py3"
inoremap ii <Esc>:w<CR> 

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'tomlion/vim-solidity'
Plug 'wincent/command-t'
Plug 'tpope/vim-surround'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'vim-latex/vim-latex'
Plug 'ervandew/supertab'

call plug#end()

colorscheme blue
