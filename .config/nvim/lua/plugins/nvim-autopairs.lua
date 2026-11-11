return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    check_ts = true, -- treesitter-aware pairing
    -- bracket insertion after completion is handled by blink.cmp
  },
}
