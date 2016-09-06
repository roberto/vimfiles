" Forget being compatible with good ol' vi
set nocompatible

filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-endwise'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'

Plug 'tpope/vim-bundler'
Plug 'nono/vim-handlebars'
Plug 'csscomb/vim-csscomb'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'mxw/vim-jsx'
Plug 'Twinside/vim-haskellConceal'

Plug 'vim-scripts/EasyGrep'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'

Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'

call plug#end()

" load initializers *.vim
runtime! initializers/*.vim

" disable netrw to generate .netrwhist file
let g:netrw_dirhistmax  =0

" line numbers
set nu

" enable syntax highlighting
syntax on

" tab
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Enable filetype-specific indenting
filetype plugin indent on

" file format (break line) 
set fileformats=unix,dos

" Why is this not a default
set hidden

" At least let yourself know what mode you're in
set showmode

" Set the search scan to wrap around the file
set wrapscan

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" Hide the mouse pointer while typing
set mousehide

" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
" set scrolloff=8

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Folding
set foldmethod=syntax
set foldlevelstart=2
set foldminlines=5

"" Adjust the highlighting
" highlight Folded guibg=grey guifg=blue

" Map folding to Spacebar
nnoremap <Space> za

let g:syntastic_javascript_checkers = ['jsxhint']
