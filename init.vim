" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'mhartington/oceanic-next'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" word finder
Plug 'mileszs/ack.vim'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" eslint and flow
Plug 'neomake/neomake'

" git
Plug 'airblade/vim-gitgutter'

" initialize plugin system
call plug#end()

" load initializers *.vim
runtime! initializers/*.vim

" line numbers
set nu
