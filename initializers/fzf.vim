" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" use ag and respect gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" map ctrl-p
nnoremap <silent> <C-p> :FZF -m<cr>

