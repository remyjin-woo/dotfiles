vim.pack.add {
  -- lspconfig
  { src = "https://github.com/neovim/nvim-lspconfig" },

  -- mason, mason-lspconfig and mason-tool-installer
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },

  -- conform
  { src = "https://github.com/stevearc/conform.nvim" },

  -- fzf-lua
  { src = "https://github.com/ibhagwan/fzf-lua" },

  -- which-key
  { src = "https://github.com/folke/which-key.nvim" },

  -- lualine
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },

  -- bufferline
  { src = "https://github.com/akinsho/bufferline.nvim" },

  -- nvim-tree
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },

  -- catppuccin theme
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
}
