return {
  {
    "echasnovski/mini.align",
    lazy = false,
    version = "*",
    config = function()
      return require("mini.align").setup({
        options = {
          split_pattern = ' "',
        },
      })
    end,
  },
}
