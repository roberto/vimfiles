" Dart
lua require'nvim_lsp'.dartls.setup{}

" go to definition
nnoremap <silent>gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.declaration()<CR>

" go to type definition
nnoremap <silent> gt   <cmd>lua vim.lsp.buf.type_definition()<CR>


" use K to get docstring trough static analysis
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" list references
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>

" list implementations
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>

" list document symbols
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>

" search symbol in workspace
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
