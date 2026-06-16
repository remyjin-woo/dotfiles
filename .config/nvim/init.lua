-- disable nvim-tree on start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- custom configs before lazy
require "config.keymaps"

-- plugins
require "config.lazy"

-- enable background transparency
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
