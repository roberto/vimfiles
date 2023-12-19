return {
  "Olical/conjure",
  ft = "clojure",
  init = function()
    vim.g["conjure#mapping#prefix"] = ","
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = false
    vim.g["conjure#client#clojure#nrepl#test#current_form_names"] =
      { "deftest", "defflow", "defflow-i18n", "defspec", "facts" }
    vim.g["conjure#mapping#doc_word"] = false
    vim.api.nvim_create_autocmd("BufNewFile", { pattern = "conjure-log-*", command = "lua vim.diagnostic.disable(0)" })
  end,
}
