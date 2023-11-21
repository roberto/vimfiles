-- luacheck: globals vim

return {
  {
    "vim-test/vim-test",
    ft = "dart",
    init = function()
      vim.g["test#preserve_screen"] = 1
    end,
    keys = {
      { ",tt", "<cmd>TestFile -strategy=neovim<cr>", desc = "Test File" },
    },
  },
}
