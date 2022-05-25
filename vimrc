syntax enable

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
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'sbdchd/neoformat'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
set background=dark

let g:neoformat_try_node_exe = 1
let g:coq_settings = { 'auto_start': v:true }
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

nnoremap <leader>ff <cmd>Telescope find_files<cr>
