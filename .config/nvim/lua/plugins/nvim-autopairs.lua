return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup {
      check_ts = true, -- treesitter support
      map_cr = true, -- Map <Tab> to accept completion and close pairs
      map_complete = true, -- Map <Tab> to accept completion and close pairs
    }
  end,
}
