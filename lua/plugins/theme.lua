return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      dim_inactive = {
        enabled = true,
        shade = "light",
        percentage = 0.9,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
