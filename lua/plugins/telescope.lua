return {
  "nvim-telescope/telescope.nvim",
  config = function()
    return require("telescope").setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = { width = 0.99 },
        },
      },
    })
  end,
}
