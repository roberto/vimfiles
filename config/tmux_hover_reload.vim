" flutter: reload hover
" it sends r or R to pane 'hover'
nnoremap <leader>fr :call system("tmux send-keys -t hover r")<cr>
nnoremap <leader>fR :call system("tmux send-keys -t hover R")<cr>

function! s:HoverEnableHotReload()
  augroup HoverHotReload
    autocmd!
    autocmd BufWritePost *.dart call system("tmux send-keys -t hover r")
  augroup END
endfunction

function! s:HoverDisableHotReload()
  augroup! HoverHotReload
endfunction

" two commands to enable/disable the automatic hot reload
command! HoverEnableHotReload call s:HoverEnableHotReload()
command! HoverDisableHotReload call s:HoverDisableHotReload()

" it enables by default when tmux
if !empty($TMUX)
  call s:HoverEnableHotReload()
endif

" Note: to rename a pane, use prefix dot: <prefix> .
" Eg: C-a.
