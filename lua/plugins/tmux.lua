return {
  {
    "aserowy/tmux.nvim",
    lazy = false,
    config = true,
    keys = {
      { "<C-h>", "<cmd>lua require'tmux'.move_left()<cr>" },
      { "<C-j>", "<cmd>lua require'tmux'.move_bottom()<cr>" },
      { "<C-k>", "<cmd>lua require'tmux'.move_top()<cr>" },
      { "<C-l>", "<cmd>lua require'tmux'.move_right()<cr>" },
    },
  },
}
