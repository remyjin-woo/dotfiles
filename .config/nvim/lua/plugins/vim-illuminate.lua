return {
  "RRethy/vim-illuminate",
  opts = {
    under_cursor = false,
    providers = {
      "lsp",
      "treesitter",
      "regex",
    },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
