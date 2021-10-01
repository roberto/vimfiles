" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'NLKNguyen/papercolor-theme'

" status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'edkolev/tmuxline.vim'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" directory
Plug 'lambdalisue/fern.vim'

" windows
Plug 'wesQ3/vim-windowswap'
Plug 'mhinz/vim-sayonara' " delete buffer and preserves current window

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" finder
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" git
Plug 'tpope/vim-fugitive'

" tests
Plug 'vim-test/vim-test', { 'for': ['dart', 'elixir'] }

" fennel
Plug 'Olical/aniseed', { 'tag': 'v3.6.2', 'for': 'fennel' }
Plug 'bakpakin/fennel.vim', { 'for': 'fennel' }
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.0.1' }

" clojure
Plug 'Olical/conjure', {'tag': 'v4.22.1', 'for': ['clojure' , 'fennel']}
Plug 'clojure-vim/vim-jack-in', { 'for': 'clojure' }
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

" parens everywhere
Plug 'luochen1990/rainbow', { 'for': ['clojure' , 'fennel'] }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': ['clojure' , 'fennel'] }
Plug 'guns/vim-sexp', { 'for': ['clojure' , 'fennel'] }
Plug 'eraserhd/parinfer-rust', {'do':
        \  'cargo build --release', 'for': ['clojure' , 'fennel'] }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }

" rust
Plug 'rust-lang/rust.vim'

" flutter
Plug 'dart-lang/dart-vim-plugin'

" elixir
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'

" utils
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multi cursor
Plug 'stephpy/vim-yaml'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" initialize plugin system
call plug#end()
let mapleader=","
let maplocalleader=","

call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]

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

" spell checking
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us

set cmdheight=2         " better for messages
set updatetime=300      " smaller updatetime for CursorHold
set shortmess+=c        " don't give ins-completion-menu messages
