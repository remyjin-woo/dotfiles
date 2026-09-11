return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    update_focused_file = {
      enable = true,
      update_root = false,
    },

    sync_root_with_cwd = true,
    reload_on_bufenter = true,

    sort = {
      sorter = "name",
      folders_first = true,
    },

    view = {
      width = 30,
      side = "left",
      signcolumn = "no",
    },

    renderer = {
      group_empty = true,
      highlight_opened_files = "name",
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = "└",
          edge = "│",
          item = "│",
          bottom = "─",
          none = " ",
        },
      },
    },

    filters = {
      dotfiles = false, -- toggle with H
      custom = { ".DS_Store" },
    },

    git = {
      enable = true,
      ignore = false, -- don't hide gitignored files (toggle with I)
    },

    diagnostics = {
      enable = true,
      show_on_dirs = true,
    },

    modified = {
      enable = true,
      show_on_dirs = true,
    },

    actions = {
      open_file = {
        quit_on_open = false,
        window_picker = {
          enable = true,
          chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        },
      },
    },
  },
}
