return {
  {
    "Olical/conjure",
    ft = "clojure",
    init = function()
      vim.g["conjure#mapping#prefix"] = ","
      vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
      vim.g["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = false
    end,
  },
  {
    "eraserhd/parinfer-rust",
    build = "cargo build --release",
    ft = "clojure",
  },
}
