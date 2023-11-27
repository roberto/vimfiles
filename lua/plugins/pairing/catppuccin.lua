return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      --
      dim_inactive = {
        -- dims the background color of inactive window
        enabled = true,
        shade = "light",
        -- percentage of the shade to apply to the inactive window
        percentage = 0.9,
      },
      highlight_overrides = {
        all = function(colors)
          return {
            -- brigther line numbers
            LineNr = { fg = colors.overlay1 },
          }
        end,
      },
    },
  },
}
