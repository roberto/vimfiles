" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'mhartington/oceanic-next'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" word finder
Plug 'mileszs/ack.vim', { 'on': 'Ack' }

" javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'json'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript'] }

" eslint and flow
Plug 'neomake/neomake'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

" distraction free mode
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" initialize plugin system
call plug#end()

" load initializers *.vim
runtime! initializers/*.vim

" line numbers
set nu
