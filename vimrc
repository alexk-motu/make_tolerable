call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'ap/vim-buftabline'
call plug#end()

" disable the damn mouse
set mouse=

" line numbering like a human
set relativenumber
set number

" enable persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

