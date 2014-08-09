" Forget being compatible with good ol' vi
set nocompatible

filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'rodjek/vim-puppet.git'
Plugin 'tpope/vim-bundler'
Plugin 'nono/vim-handlebars'
Plugin 'fatih/vim-go.git'
Plugin 'csscomb/vim-csscomb'

Plugin 'vim-scripts/EasyGrep'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

Plugin 'junegunn/seoul256.vim'
Plugin 'altercation/vim-colors-solarized'

" Plugin 'godlygeek/tabular'

" Plugin 'kchmck/vim-coffee-script'
" Plugin 'timcharper/textile.vim'
" Plugin 'tpope/vim-haml'
" Plugin 'groenewege/vim-less'
" Plugin 'digitaltoad/vim-jade'

call vundle#end()

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
