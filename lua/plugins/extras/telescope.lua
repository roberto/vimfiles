return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      layout_strategy = "vertical",
      layout_config = {
        vertical = { width = 0.99 },
      },
    })
  end,
}
