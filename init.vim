" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'NLKNguyen/papercolor-theme'

" status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'edkolev/tmuxline.vim'

" windows
Plug 'wesQ3/vim-windowswap'
Plug 'mhinz/vim-sayonara' " delete buffer and preserves current window

" finder
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" tests
Plug 'vim-test/vim-test'

" clojure
Plug 'Olical/conjure', { 'tag' : 'v4.3.1', 'for' : 'clojure' }
Plug 'clojure-vim/vim-jack-in', { 'for' : 'clojure' }
Plug 'tpope/vim-dispatch', { 'for' : 'clojure' }
Plug 'radenling/vim-dispatch-neovim', { 'for' : 'clojure' }

" parens everywhere
Plug 'luochen1990/rainbow', { 'for' : 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'eraserhd/parinfer-rust', {'do':
        \  'cargo build --release', 'for': 'clojure'}
Plug 'guns/vim-clojure-static', { 'for' : 'clojure' }

" rust
Plug 'rust-lang/rust.vim'

" flutter
Plug 'dart-lang/dart-vim-plugin'

" utils
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multi cursor

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

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

" https://neovim.io/doc/user/options.html

" no backup
set nobackup
set nowritebackup
set noswapfile

set hidden              " hide files instead of close them

set colorcolumn=0       " 80 chars ruler
set cursorline          " highlight current line
set nocursorcolumn      " no highlight current column
set scrolloff=3         " start scrolling 3 lines before

set nu                  " line numbers
set signcolumn=yes      " always show signcolumns

set cmdheight=2         " better for messages
set updatetime=300      " smaller updatetime for CursorHold
set shortmess+=c        " don't give ins-completion-menu messages

