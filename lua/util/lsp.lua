local mapkey = require("util.keymapper").mapkey

local M = {}

-- set keymaps on the active lsp server
M.on_attach = function(_, bufnr)
  mapkey("<leader>cf", "Lspsaga finder", { buffer = bufnr, desc = "Definition finder" })
  mapkey("<leader>cd", "Lspsaga peek_definition", { buffer = bufnr, desc = "Peek definition" })
  mapkey("<leader>ci", "Lspsaga goto_definition", { buffer = bufnr, desc = "Definition" })
  mapkey("<leader>ca", "Lspsaga code_action", { buffer = bufnr, desc = "Code action" })
  mapkey("<leader>cr", "Lspsaga rename", { buffer = bufnr, desc = "Rename" })

  mapkey("<leader>xD", "Lspsaga show_line_diagnostics",
    { buffer = bufnr, desc = "Line Diagnostics" })
  mapkey("<leader>xd", "Lspsaga show_cursor_diagnostics",
    { buffer = bufnr, desc = "Cursor Diagnostics" })
  mapkey("<leader>xp", "Lspsaga diagnostic_jump_prev",
    { buffer = bufnr, desc = "Previous Diagnostic" })
  mapkey("<leader>xn", "Lspsaga diagnostic_jump_next", { buffer = bufnr, desc = "Next Diagnostic" })

  mapkey("K", "Lspsaga hover_doc", { buffer = bufnr, desc = "Show Documenation" })
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = " ", Info = "" }

return M
