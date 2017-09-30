" Use <TAB> to select the popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" <Enter> will work as usual, ignoring popup
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
