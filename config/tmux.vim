let tmux_navigator_no_mappings = 1

if has('vim_starting')
  if &rtp =~ '\<tmux-navigator\>'
    nnoremap <silent> <c-a><c-h> :TmuxNavigateLeft<cr>
    nnoremap <silent> <c-a><c-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <c-a><c-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <c-a><c-l> :TmuxNavigateRight<cr>
  else
    nnoremap <C-h> <c-w>h
    nnoremap <C-j> <c-w>j
    nnoremap <C-k> <c-w>k
    nnoremap <C-l> <c-w>l
  endif
endif

" tmux configuration

" # https://github.com/christoomey/vim-tmux-navigator/issues/193#issuecomment-354605790
" is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
"     | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
" bind-key h if-shell "$is_vim" "send-keys C-a C-h"  "select-pane -L"
" bind-key j if-shell "$is_vim" "send-keys C-a C-j"  "select-pane -D"
" bind-key k if-shell "$is_vim" "send-keys C-a C-k"  "select-pane -U"
" bind-key l if-shell "$is_vim" "send-keys C-a C-l"  "select-pane -R"

" minimalist, only with windows
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'options': {'status-justify': 'left'}
      \}
