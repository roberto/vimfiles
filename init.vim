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
" Plug 'w0rp/ale'
" Plug 'antew/vim-elm-language-server'

" vscode extensions
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': './install.sh'
"     \ }

" flow
" Plug 'flowtype/vim-flow'

" typescript
Plug 'HerringtonDarkholme/yats.vim'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" distraction free mode
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }

" autocomplete
Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/ncm-flow'

" snippets
" Plug 'SirVer/ultisnips'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' }

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
set nowritebackup
set noswapfile
" 80 chars ruler
set cc=80

" ; working as :
nnoremap ; :

" better for messages
set cmdheight=2

" smaller updatetime for CursorHold
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


let mapleader=","

" let g:LanguageClient_serverCommands = { 'haskell': ['stack exec -- hie --lsp'] }
" let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']

set hidden
