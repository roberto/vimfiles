let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '_build$\|deps$\|\.git$\|\.hg$\|\.svn$\|log$\|_public$\|node_modules$\|bower_components$\|tmp$\|vendor/bundle$\|vendor/cache$\|coverage$\|vendor/mongodb$\|vendor/redis$',
    \ 'file': '\.swp$\|\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
    \ }



