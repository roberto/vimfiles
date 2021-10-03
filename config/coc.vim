let g:coc_global_extensions = [
  \'coc-flutter',
  \'coc-snippets',
  \'coc-json',
  \'coc-conjure',
  \'coc-actions',
  \'coc-elixir',
  \'coc-tsserver']


if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

let g:coc_snippet_next = '<tab>'

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rr <Plug>(coc-refactor)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph, `<leader>aw` for a word
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>ef  <Plug>(coc-fix-current)
" list errors
nnoremap <silent> <leader>el  :<C-u>CocDiagnostics<CR>

"format buffer
nmap <leader>fb  <Plug>(coc-format)
xmap <leader>fb  <Plug>(coc-format)

"format selected
nmap <leader>fs  <Plug>(coc-format-selected)
xmap <leader>fs  <Plug>(coc-format-selected)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>

" to navigate with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" to confirm with enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" format
command! -nargs=0 Format :call CocAction('format')
