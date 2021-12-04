" mapping most used
nnoremap <c-p> :Clap files<cr>
nnoremap <c-b> :Clap buffers<cr>
nnoremap <c-s> :Clap grep<cr>

" set project root
" pubspec.yaml for dart/flutter projects
" projectile used by emacs plugins
let g:clap_project_root_markers = [
      \ 'pubspec.yaml',
      \ '.root',
      \ '.projectile',
      \ '.git',
      \ '.git/'
      \ ]

" centered
let g:clap_layout = { 'relative': 'editor' }

" no border
let g:clap_search_box_border_style = 'nil'

" preview delay
let g:clap_preview_delay = 200
