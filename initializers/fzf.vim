" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" use ag and respect gitignore
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
endif

" use ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --follow --glob "!{.git,node_modules,vendor}/*"'

  " :FindAll something
  let g:rg_all_command = '
    \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always" '
  command! -bang -nargs=* FindAll call fzf#vim#grep(g:rg_all_command .shellescape(<q-args>), 1, <bang>0)

  " :Find something
  let g:rg_command = '
    \ rg --column --line-number --no-heading --fixed-strings --ignore-case --follow --color "always"
    \ -g "*.{js,json,md,html,config,py,cpp,c,go,rb,conf,groovy,yaml,yml}"
    \ -g "!{.git,node_modules,vendor}/*" '
  command! -bang -nargs=* Find call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
endif

" map ctrl-p
nnoremap <silent> <C-p> :FZF -m<cr>

