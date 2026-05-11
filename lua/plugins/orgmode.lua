return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/Documents/orgmode-notes/**/*",
      org_default_notes_file = "~/Documents/orgmode-notes/refile.org",
      org_hide_emphasis_markers = true,
      org_startup_indented = true,
      org_startup_folded = "content", -- options: showeverything",
      org_todo_keywords = { "SEED", "TODO", "WAITING", "REVIEW", "|", "DONE", "DELEGATED" },
      org_todo_keyword_faces = {
        WAITING = ":foreground blue :weight bold",
        DELEGATED = ":background #FFFFFF :slant italic :underline on",
        SEED = ":background #000000 :foreground red",
      },
      mappings = {
        global = {},
      },
    })

    -- Experimental LSP support
    vim.lsp.enable("org")
  end,
}
