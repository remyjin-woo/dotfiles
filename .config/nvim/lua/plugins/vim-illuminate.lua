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

    local p = require "config.palette"
    local function apply()
      local hl = { underline = true, sp = p.fg_muted }
      vim.api.nvim_set_hl(0, "IlluminatedWordText", hl)
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", hl)
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", hl)
    end
    apply()
    vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", callback = apply })
  end,
}
