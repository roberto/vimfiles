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

" elm
Plug 'elmcast/elm-vim', { 'for': ['elm'] }

" eslint and flow
Plug 'w0rp/ale'
Plug 'flowtype/vim-flow'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

" distraction free mode
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }

" autocomplete
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-flow'

" snippets
Plug 'SirVer/ultisnips'

" plantuml
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" initialize plugin system
call plug#end()

" load config files *.vim
runtime! config/*.vim

" line numbers
set nu

" no backup
set nobackup
set noswapfile

" 80 chars ruler
set cc=80

" ; working as :
nnoremap ; :

language en_US

set hidden
