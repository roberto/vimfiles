" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" word finder
Plug 'mileszs/ack.vim', { 'on': 'Ack' }

" javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'json'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript'] }

" eslint and flow
Plug 'w0rp/ale'
Plug 'flowtype/vim-flow'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" load config files *.vim
runtime! config/*.vim

" line numbers
set nu

" no backup
set nobackup
set noswapfile

set hidden
