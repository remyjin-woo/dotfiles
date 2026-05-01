-- disable nvim-tree on start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- custom configs before lazy
require "config.keymaps"

-- plugins
require "config.lazy"

vim.cmd.colorscheme "catppuccin-nvim"
