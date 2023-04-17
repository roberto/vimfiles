return {
  {
    "echasnovski/mini.move",
    lazy = false,
    version = false,
    config = function()
      return require("mini.move").setup({
        mappings = {
          -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = "<A-h>",
          right = "<A-l>",
          down = "<A-j>",
          up = "<A-k>",
        },
      })
    end,
  },
}
