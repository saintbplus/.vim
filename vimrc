syntax on

set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=utf8
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpop/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'

call plug#end()
set background=dark



let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


nnoremap <silent> <Leader>+ : vertical resize +5 <CR>
nnoremap <silent> <Leader>- : vertical resize -5 <CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
"" nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
