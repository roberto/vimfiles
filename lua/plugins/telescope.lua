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
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
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
		mapkey("<leader><leader>", "Telescope git_files show_untracked=true"),
		mapkey("<leader>ff", "Telescope find_files"),
		mapkey("<leader>fg", "Telescope live_grep"),
		mapkey("<leader>fw", "Telescope grep_string"), -- current selection
		mapkey("<leader>fb", "Telescope buffers"),
		mapkey("<leader>fr", "Telescope resume"),
		mapkey("<leader>fk", "Telescope keymaps"),
		mapkey("<leader>fh", "Telescope help_tags"),
		mapkey("<leader>fa", vim.find_files_from_project_git_root),
	},
}
