let test#strategy = "neovim"
let g:test#preserve_screen = 1

" mapping
nnoremap <silent> <leader>tl  :<C-u>TestLast<CR>
nnoremap <silent> <leader>tt  :<C-u>TestNearest<CR>
nnoremap <silent> <leader>tb  :<C-u>TestFile<CR>
nnoremap <silent> <leader>ta  :<C-u>TestSuite<CR>
nnoremap <silent> <leader>to  :<C-u>TestVisit<CR>
