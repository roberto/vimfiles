local opts = {
  ensure_installed = {
    "efm",
    "bashls",
    "lua_ls",
    "jsonls",
    "clojure_lsp",
  },

  automatic_installation = true,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = opts,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
}
