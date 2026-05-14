return {
  "Shatur/neovim-ayu",
  lazy = false, -- Load immediately
  priority = 1000, -- Load before other plugins
  config = function()
    require("ayu").setup {
      -- Optional configuration for ayu
      -- Example: mirror = false, -- Use the "mirage" variant
      -- See: https://github.com/Shatur/neovim-ayu#configuration
    }
    vim.cmd "colorscheme ayu"
  end,
}
