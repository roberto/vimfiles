" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'PierreCapo/voir.vim'
Plug 'tssm/fairyfloss.vim'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'ElmCast/elm-vim'

" word finder
Plug 'mileszs/ack.vim', { 'on': 'Ack' }

" clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'guns/vim-clojure-highlight'

" javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'json'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript'] }
Plug 'jxnblk/vim-mdx-js'

" vue
Plug 'posva/vim-vue'

" html
Plug 'mattn/emmet-vim'

" css
Plug 'ap/vim-css-color'

" complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'Valloric/YouCompleteMe'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'mdx'] }

" distraction free mode
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' }

" plantuml
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" tmux
Plug 'christoomey/vim-tmux-navigator'

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

set hidden
