return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "float",
    open_mapping = [[<A-i>]],
    size = function(term)
      if term.direction == "horizontal" then
        return math.floor(vim.o.lines * 0.3)
      elseif term.direction == "vertical" then
        return math.floor(vim.o.columns * 0.4)
      end
      return 20
    end,
    hide_numbers = true,
    start_in_insert = true,
    auto_scroll = true,
    persist_size = true,
    persist_mode = true,
    shade_terminals = false,
    float_opts = {
      border = "rounded",
      winblend = 0, -- set 5-15 for slight transparency
      zindex = 50,
      title_pos = "center",
      width = function()
        return math.ceil(vim.o.columns * 0.85)
      end,
      height = function()
        return math.ceil(vim.o.lines * 0.85)
      end,
      -- row/col can also be numbers or functions
    },
    highlights = {
      FloatBorder = { guifg = "#E6B673" }, -- border color ayu gold
      NormalFloat = { link = "Normal" },
    },
    winbar = {
      enabled = true, -- set true to show terminal name in a bar
      name_formatter = function(term)
        return term.name
      end,
    },
  },
}
