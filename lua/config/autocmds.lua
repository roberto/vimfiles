-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

local function add_title()
  local filename = vim.fn.expand("%:t:r")
  local sanitezed_filename = string.match(filename, "^[^a-z]*(.*)"):gsub("[_-]", " "):sub(1)
  local title = sanitezed_filename:gsub("^%l", string.upper):sub(1)
  vim.api.nvim_buf_set_lines(0, 0, -1, false, { "# " .. title })
end

-- vim.api.nvim_create_autocmd({ "BufNewFile" }, {
--   pattern = { "*.md" },
--   callback = add_title,
-- })

vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "*.md" },
  callback = function()
    if vim.api.nvim_buf_line_count(0) == 1 then
      add_title()
    end
  end,
})
