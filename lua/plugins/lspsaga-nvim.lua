return {
  "glepnir/lspsaga.nvim",
  lazy = false,
  config = function()
    require("lspsaga").setup({
      -- keybinds for navigation in lspsaga window
      move_in_saga = { prev = "<C-k>", next = "<C-j>" },
      definition = {
        keys = {
          edit = "o",
        },
      },
      lightbulb = {
        enable = false,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
