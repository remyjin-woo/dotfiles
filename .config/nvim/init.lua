-- disable nvim-tree on start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- install plugins via vim.pack.add
require "plugins"

-- load core configs
require "options"
require "keymaps"

-- load plugin configs
require "configs.mason"
require "configs.lspconfig"
require "configs.conform"
require "configs.nvim-tree"
require "configs.lualine"
require "configs.bufferline"
require "configs.gitsigns"
require "configs.which-key"
require "configs.catppuccin"
