" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" word finder
Plug 'mileszs/ack.vim', { 'on': 'Ack' }

" complete
Plug 'ncm2/float-preview.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" clojure
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'Olical/conjure', {'tag': 'v4.1.0'}

" rust
Plug 'rust-lang/rust.vim'

" flutter
Plug 'dart-lang/dart-vim-plugin'

" linters
Plug 'w0rp/ale'

" utils
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'

Plug 'nathanaelkane/vim-indent-guides'

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

let mapleader=","
let maplocalleader=","

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

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
" set signcolumn=yes

" backspace mac issue, insert mode
set backspace=indent,eol,start

set hidden
