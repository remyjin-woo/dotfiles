return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      -- Styling
      separator_style = "thin",
      indicator = {
        icon = "▎", -- subtle active tab indicator
        style = "icon",
      },
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",

      -- Behavior
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icons = {
          error = " ",
          warning = " ",
          info = " ",
          hint = " ",
        }
        return " " .. (icons[level] or " ") .. count
      end,

      -- Appearance
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      show_tab_indicators = true,
      persist_buffer_sort = true,
      always_show_bufferline = true,

      -- Ayu Dark color palette
      highlights = {
        fill = {
          bg = "#0A0E1A", -- Ayu Dark bg
        },
        background = {
          fg = "#5C6370", -- Inactive tab text (ayu_dark.fg_side)
          bg = "#121621", -- Inactive tab bg (ayu_dark.bg_side)
        },
        buffer_visible = {
          fg = "#B3B1AD", -- Visible but not active (ayu_dark.fg)
          bg = "#121621", -- Same as inactive bg
        },
        buffer_selected = {
          fg = "#B3B1AD", -- Active tab text (ayu_dark.fg)
          bg = "#282C34", -- Active tab bg (slightly lighter)
          bold = true,
        },
        separator = {
          fg = "#121621", -- Inactive separator
          bg = "#121621",
        },
        separator_selected = {
          fg = "#282C34", -- Active separator
          bg = "#282C34",
        },
        -- Diagnostics
        error = {
          fg = "#FF3333", -- Ayu Dark red
        },
        error_visible = {
          fg = "#FF3333",
        },
        error_selected = {
          fg = "#FF3333",
          bold = true,
        },
        warning = {
          fg = "#E6B450", -- Ayu Dark yellow
        },
        warning_visible = {
          fg = "#E6B450",
        },
        warning_selected = {
          fg = "#E6B450",
          bold = true,
        },
        info = {
          fg = "#56B6C2", -- Ayu Dark cyan
        },
        info_visible = {
          fg = "#56B6C2",
        },
        info_selected = {
          fg = "#56B6C2",
          bold = true,
        },
        hint = {
          fg = "#87AFD7", -- Ayu Dark blue
        },
        hint_visible = {
          fg = "#87AFD7",
        },
        hint_selected = {
          fg = "#87AFD7",
          bold = true,
        },
        -- Close button
        close_button = {
          fg = "#5C6370",
          bg = "#121621",
        },
        close_button_visible = {
          fg = "#5C6370",
          bg = "#121621",
        },
        close_button_selected = {
          fg = "#B3B1AD",
          bg = "#282C34",
        },
      },
    },
  },
}
