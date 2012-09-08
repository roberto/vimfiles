filetype off

call pathogen#infect()

" load initializers *.vim
runtime! initializers/*.vim

" disable netrw to generate .netrwhist file
let g:netrw_dirhistmax  =0

" line numbers
set nu

" enable syntax highlighting
syntax on

 " tab with spaces
set expandtab

" Enable filetype-specific indenting
filetype plugin indent on
