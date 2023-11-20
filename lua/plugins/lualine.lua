local config = function()
  require("lualine").setup({
    options = {
      theme = "catppuccin-mocha",
      globalstatus = true,
    },
    tabline = {
      lualine_a = { "buffers" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = { "branch", "diff", "diagnostics" },
      lualine_y = { "enconding", "filetype" },
      lualine_z = { "location" },
    },
    sections = {},
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
