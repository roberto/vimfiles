" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" map ctrl-p
nnoremap <silent> <C-p> :FZF -m<cr>

