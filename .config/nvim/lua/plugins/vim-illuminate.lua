return {
  "RRethy/vim-illuminate",
  event = { "BufReadPost", "BufNewFile" },
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
