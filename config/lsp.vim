lua << EOF
local lsp = require 'nvim_lsp'
local nvim_command = vim.api.nvim_command

local on_attach = function(client)
  require'diagnostic'.on_attach()

  -- show diagnostics on line
  nvim_command('autocmd CursorHold <buffer> lua vim.lsp.util.show_line_diagnostics()')
end

lsp.dartls.setup{ on_attach = on_attach }
EOF

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

autocmd FileType dart setlocal omnifunc=v:lua.vim.lsp.omnifunc

" don't show diagnostics while in insert mode
let g:diagnostic_insert_delay = 1

" signs (nerdfonts)
call sign_define("LspDiagnosticsErrorSign", {"text" : "\ue00a", "texthl" : "LspDiagnosticsError"})
call sign_define("LspDiagnosticsWarningSign", {"text" : "\uf071", "texthl" : "LspDiagnosticsWarning"})
call sign_define("LspDiagnosticsInformationSign", {"text" : "\ufa22", "texthl" : "LspDiagnosticsInformation"})
call sign_define("LspDiagnosticsHintSign", {"text" : "\uf834", "texthl" : "LspDiagnosticsHint"})

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
nnoremap <silent> gw    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

" format
nnoremap <buffer> <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

