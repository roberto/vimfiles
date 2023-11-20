-- luacheck: globals vim

local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			git_files = {
				theme = "dropdown",
				previewer = true,
				hidden = false,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
end

function vim.find_files_from_project_git_root()
  local function is_git_repo()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
  end
  local function get_git_root()
    local dot_git_path = vim.fn.finddir(".git", ".;")
    return vim.fn.fnamemodify(dot_git_path, ":h")
  end
  local opts = {}
  if is_git_repo() then
    opts = {
      cwd = get_git_root(),
    }
  end
  require("telescope.builtin").find_files(opts)
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapkey("<leader><leader>", "Telescope git_files show_untracked=true", {desc = "Files"}),
		mapkey("<leader>ff", "Telescope find_files", {desc = "All files"}),
		mapkey("<leader>fg", "Telescope live_grep", {desc = "Grep"}),
		mapkey("<leader>fw", "Telescope grep_string", {desc = "Word"}),
		mapkey("<leader>fb", "Telescope buffers", {desc = "Open buffer"}),
		mapkey("<leader>fr", "Telescope resume", {desc = "Resume"}),
		mapkey("<leader>fk", "Telescope keymaps", {desc = "Keymaps"}),
		mapkey("<leader>fh", "Telescope help_tags", {desc = "Help tags"}),
		mapkey("<leader>fa", vim.find_files_from_project_git_root, {desc = "All files (git root)"}),
	},
}
