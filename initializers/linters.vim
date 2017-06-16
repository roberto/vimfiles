" turning off to use ale trigger instead of vim-flow
let g:flow#enable = 0
let g:flow#autoclose = 1

let g:ale_linters = {
\  'javascript': ['eslint', 'flow'],
\}

" always shoing ale column to avoid resizing
let g:ale_sign_column_always = 1

" turn off while typing
let g:ale_lint_on_text_changed = 'never'

" turn off when opening a file
let g:ale_lint_on_enter = 0

" open error list until them has been fixed
let g:ale_open_list = 1
