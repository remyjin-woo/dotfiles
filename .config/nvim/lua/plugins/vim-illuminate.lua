return {
  "RRethy/vim-illuminate",
  opts = {
    under_cursor = false,
    delay = 150,
    min_count_to_highlight = 2,
    providers = { "lsp", "treesitter", "regex" },
    filetypes_denylist = {
      "dirbuf",
      "dirvish",
      "fugitive",
      "NeogitStatus",
      "NeogitLogView",
      "NvimTree",
      "TelescopePrompt",
      "toggleterm",
    },
    modes_denylist = { "i" },
    large_file_cutoff = 5000,
    large_file_overrides = {
      providers = { "regex" },
    },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)

    local function apply()
      vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true, bold = true })
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true, bold = true })
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { underline = true, bold = true })
    end
    apply()
    vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", callback = apply })
  end,
}
