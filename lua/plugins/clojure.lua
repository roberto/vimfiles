return {
  {
    "Olical/conjure",
    ft = "clojure",
    init = function()
      vim.g["conjure#mapping#prefix"] = ","
    end,
  },
  {
    "eraserhd/parinfer-rust",
    build = "cargo build --release",
    ft = "clojure",
  },
}
