return {
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    ---@module "fzf-lua"
    ---@diagnostic disable: missing-fields
    opts = function()
      local actions = require "fzf-lua.actions"
      return {
        winopts = {
          height = 0.85,
          width = 0.80,
          row = 0.50,
          col = 0.50,
          border = "rounded",
          preview = {
            border = "rounded",
            wrap = false,
            layout = "flex",
            flip_columns = 100,
            vertical = "down:45%",
            horizontal = "right:60%",
          },
        },
        fzf_opts = {
          ["--info"] = "inline",
          ["--layout"] = "reverse",
        },
        keymap = {
          builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
          },
          fzf = {
            ["ctrl-q"] = "select-all+accept",
            ["ctrl-u"] = "half-page-up",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-f"] = "preview-page-down",
            ["ctrl-b"] = "preview-page-up",
          },
        },
        grep = {
          actions = {
            ["ctrl-g"] = { actions.grep_lgrep },
          },
        },
        defaults = {
          git_icons = true,
          file_icons = true,
        },
      }
    end,
    ---@diagnostic enable: missing-fields
  },
}
