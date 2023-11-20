local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.lsp").diagnostic_signs

local config = function()
  require("neoconf").setup({})
  local cmp_nvim_lsp = require("cmp_nvim_lsp")
  local lspconfig = require("lspconfig")

  for type, icon in pairs(diagnostic_signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  -- lua
  lspconfig.lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = { -- custom settings for lua
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          -- make language server aware of runtime files
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
      },
    },
  })

  -- clojure
  lspconfig.clojure_lsp.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "clojure", "edn" },
  })

  -- json
  lspconfig.jsonls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "json", "jsonc" },
  })

  -- bash
  lspconfig.bashls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "sh", "aliasrc" },
  })

  local luacheck = require("efmls-configs.linters.luacheck")
  local stylua = require("efmls-configs.formatters.stylua")
  local eslint_d = require("efmls-configs.linters.eslint_d")
  local prettier_d = require("efmls-configs.formatters.prettier_d")
  local fixjson = require("efmls-configs.formatters.fixjson")
  local shellcheck = require("efmls-configs.linters.shellcheck")
  local shfmt = require("efmls-configs.formatters.shfmt")
  local dartfmt = require("efmls-configs.formatters.dartfmt")
  local dartanalyzer = require("efmls-configs.linters.dartanalyzer")

  -- configure efm server
  lspconfig.efm.setup({
    filetypes = {
      "lua",
      "json",
      "jsonc",
      "sh",
      "markdown",
      "dart",
    },
    init_options = {
      documentFormatting = true,
      documentRangeFormatting = true,
      hover = true,
      documentSymbol = true,
      codeAction = true,
      completion = true,
    },
    settings = {
      languages = {
        lua = { luacheck, stylua },
        json = { eslint_d, fixjson },
        jsonc = { eslint_d, fixjson },
        sh = { shellcheck, shfmt },
        markdown = { prettier_d },
        html = { prettier_d },
        css = { prettier_d },
        dart = { dartfmt, dartanalyzer },
      },
    },
  })
end

return {
  "neovim/nvim-lspconfig",
  config = config,
  lazy = false,
  dependencies = {
    "windwp/nvim-autopairs",
    "williamboman/mason.nvim",
    "creativenull/efmls-configs-nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
  },
}
