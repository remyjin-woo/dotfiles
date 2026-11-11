return {
  "Shatur/neovim-ayu",
  lazy = false, -- Load immediately
  priority = 1000, -- Load before other plugins
  config = function()
    local p = require "config.palette"
    local none = { bg = "None" }

    require("ayu").setup {
      mirage = false,
      -- transparent background so kitty's opacity/blur shows through;
      -- applied by ayu itself, so it survives :colorscheme reloads
      overrides = {
        Normal = none,
        NormalNC = none,
        NormalFloat = none,
        FloatBorder = { fg = p.accent, bg = "None" },
        SignColumn = none,
        FoldColumn = none,
        LineNr = none,
        CursorLineNr = { fg = p.accent, bg = "None" },
        EndOfBuffer = none,
        WinSeparator = { fg = p.bg_panel, bg = "None" },
        NvimTreeNormal = none,
        NvimTreeNormalNC = none,
        NvimTreeEndOfBuffer = none,
        -- match kitty's selection colour
        Visual = { bg = p.selection },
      },
    }
    vim.cmd.colorscheme "ayu-dark"
  end,
}
