return {
  {
    "aserowy/tmux.nvim",
    config = function()
      return require("tmux").setup()
    end,
    key = {
      { "C-a h", "<cmd>lua require'tmux'.move_left()<cr>" },
      { "C-a j", "<cmd>lua require'tmux'.move_bottom()<cr>" },
      { "C-a k", "<cmd>lua require'tmux'.move_top()<cr>" },
      { "C-a l", "<cmd>lua require'tmux'.move_right()<cr>" },
    },
  },
}
