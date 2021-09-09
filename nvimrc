set rtp+=runtimepath=~/.config/nvim,~/dotfiles/nvim/,~/.config/nvim/plugged/fzf.vim/,~/.config/nvim/plugged/vim-tmux-navigator/,~/.config/nvim/plugged/vim-multiple-cursors/,~/.config/nvim/plugged/vim-solidity/,~/.config/nvim/plugged/vim-surround/,~/.config/nvim/plugged/vim-latex-live-preview/,~/.config/nvim/plugged/vim-latex/,~/.config/nvim/plugged/supertab/,~/.config/nvim/plugged/ncm2/,~/.config/nvim/plugged/nvim-yarp/,~/.config/nvim/plugged/ncm2-bufword/,~/.config/nvim/plugged/ncm2-tmux/,~/.config/nvim/plugged/ncm2-path/,~/.config/nvim/plugged/auto-pairs/,~/.config/nvim/plugged/nerdcommenter/,~/.config/nvim/plugged/vim-go/,~/.config/nvim/plugged/coc.nvim/,~/.config/nvim/plugged/vim-ripgrep/,/etc/xdg/nvim,~/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after,/usr/share/vim/vimfiles

set nocompatible

"Enable Mouse Usage in all modes
set mouse=a 

" Turn on syntax highlighting
syntax on

" Turn on text wrapping
set wrap

" Use X clipboard
set clipboard=unnamedplus

" Enable Filetype based plugins
filetype plugin on

" Show Both absolute and relative Line Numbers
set number relativenumber

" Fix and set leader key to <SPACE>
nnoremap <SPACE> <NOP>
let mapleader=" " 
" Leader commands
nnoremap <leader><leader> :Rg 
nnoremap <leader>f :Files<CR>
nnoremap <leader>h :History:<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>o :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>n :r !echo ""<CR>k

" Easy exit Insert Mode and Terminal Mode
tnoremap jk <C-\><C-n>
inoremap jk <Esc>

" Easy Splits and Tabs
nnoremap ;- :sp<CR>
nnoremap ;\| :vsp<CR>
nnoremap ;1 1gt
nnoremap ;2 2gt
nnoremap ;3 3gt
nnoremap ;4 4gt
nnoremap ;5 5gt
nnoremap ;6 6gt
nnoremap ;7 7gt
nnoremap ;8 8gt
nnoremap ;9 9gt
nnoremap ;0 10gt
nnoremap ;z :tabprev<CR>
nnoremap ;n :tabnew<CR>

set tabstop=4
set shiftwidth=4
set lcs=eol:⏎,tab:\|\ 

" Convert tabs to spaces
set noexpandtab

" Show the normal commands like dt., 4cw, etc
set showcmd

" Enable displaying of listchars like \n char
set list

" Disable Powerline
let g:powerline_loaded = 1

" Enable line on where the cursor is; Helps a ton to locate the cursor
set cursorline

" Do not highlight search results
set nohlsearch

" Start searching as you type
set incsearch

" Disable training wheels
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=1 -interaction=nonstopmode $*'
let theuniqueserv = expand("%:r")

" Break lines when they exceed 80 characters
set tw=80 linebreak

let g:powerline_pycmd = "py3"

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

Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomlion/vim-solidity'
Plug 'tpope/vim-surround'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'vim-latex/vim-latex'
Plug 'ervandew/supertab'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'kien/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Easier window movements
nnoremap <C-J> <C-W><C-J> " Move Down
nnoremap <C-K> <C-W><C-K> " Move Up
nnoremap <C-L> <C-W><C-L> " Move Left
nnoremap <C-H> <C-W><C-H> " Move Right

"Natural split opening
set splitbelow
set splitright

" Update programs when configs are updated
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Clean tex files when closing a tex file
autocmd VimLeave *.tex !rm *.aux, *.blg, *.bbl, *.log, *.out

" Skeleton File Loading
autocmd BufNewFile *.pmd 0r ~/.config/nvim/templates/pandoc-markdown.pmd
autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/latex.tex
autocmd BufNewFile *.py  0r ~/.config/nvim/templates/python.py
autocmd BufNewFile *.sh  0r ~/.config/nvim/templates/shell.sh
autocmd BufNewFile *.bmr 0r ~/.config/nvim/templates/pandoc-beamer.bmr
autocmd BufNewFile *.c   0r ~/.config/nvim/templates/C-template.c
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/C-template.c
autocmd BufNewFile *.h   0r ~/.config/nvim/templates/C-template.c
autocmd BufNewFile *.hpp 0r ~/.config/nvim/templates/C-template.c
autocmd BufNewFile *.sol 0r ~/.config/nvim/templates/solidity-template.sol

