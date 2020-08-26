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

" finder
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" tests
Plug 'roberto/vim-test', {'branch': 'dart-flutter'} " https://github.com/vim-test/vim-test/pull/511

" clojure
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'luochen1990/rainbow'

" rust
Plug 'rust-lang/rust.vim'

" flutter
Plug 'dart-lang/dart-vim-plugin'

" utils
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

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

" line numbers
set nu

" no backup
set nobackup
set nowritebackup
set noswapfile

" 80 chars ruler
set cc=80

" better for messages
set cmdheight=2

" smaller updatetime for CursorHold
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" hide files instead of close them
set hidden
