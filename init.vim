" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhartington/oceanic-next'

" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" initialize plugin system
call plug#end()

" load initializers *.vim
runtime! initializers/*.vim

" line numbers
set nu
