return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = function()
    return {
      options = {
        -- Flat, modern look
        style_preset = require("bufferline").style_preset.no_bold,
        separator_style = "slope",
        enforce_regular_tabs = false,

        -- Subtle active indicator (no underline bar)
        indicator = {
          style = "icon",
          icon = "▎",
        },

        -- Compact diagnostics
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, _, _)
          local icon = ({
            error = "",
            warning = "",
            info = "",
            hint = "",
          })[level] or ""
          return " " .. icon .. count
        end,

        -- Behavior
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = "bdelete! %d",
        persist_buffer_sort = true,
        always_show_bufferline = true,
        sort_by = "directory",

        -- Appearance toggles
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        numbers = "none",
        color_icons = true,

        -- Integrate side panels cleanly
        offsets = {
          {
            filetype = "NvimTree",
            text = "  Explorer",
            text_align = "left",
            highlight = "BufferLineOffset",
            separator = true,
          },
          {
            filetype = "neo-tree",
            text = "  Explorer",
            text_align = "left",
            separator = true,
          },
        },
      },

      --- HIGHLIGHTS (top-level, sibling of options) ---
      highlights = {
        -- fill / background
        fill = { bg = "#0A0E1A" },
        background = { fg = "#5C6370", bg = "#0F131C" },
        buffer_visible = { fg = "#8E908C", bg = "#0F131C" },
        buffer_selected = { fg = "#FFAE57", bg = "#121621", italic = false, bold = true },

        -- separators (slope)
        separator = { fg = "#0A0E1A", bg = "#0F131C" },
        separator_visible = { fg = "#0A0E1A", bg = "#0F131C" },
        separator_selected = { fg = "#0A0E1A", bg = "#121621" },
        -- close buttons
        close_button = { fg = "#5C6370", bg = "#0F131C" },
        close_button_visible = { fg = "#5C6370", bg = "#0F131C" },
        close_button_selected = { fg = "#B3B1AD", bg = "#121621" },

        -- modified marker
        modified = { fg = "#E6B450" },
        modified_visible = { fg = "#E6B450" },
        modified_selected = { fg = "#FF8800" },

        -- diagnostics
        error = { fg = "#FF3333" },
        error_visible = { fg = "#FF3333" },
        error_selected = { fg = "#FF7766" },
        warning = { fg = "#E6B450" },
        warning_visible = { fg = "#E6B450" },
        warning_selected = { fg = "#E6B450" },
        info = { fg = "#56B6C2" },
        info_visible = { fg = "#56B6C2" },
        info_selected = { fg = "#56B6C2" },
        hint = { fg = "#87AFD7" },
        hint_visible = { fg = "#87AFD7" },
        hint_selected = { fg = "#87AFD7" },

        -- duplicate buffers
        duplicate = { fg = "#5C6370", italic = true },
        duplicate_visible = { fg = "#8E908C", italic = true },
        duplicate_selected = { fg = "#FFAE57", italic = true },

        -- tab pages
        tab = { fg = "#5C6370", bg = "#0F131C" },
        tab_selected = { fg = "#FFAE57", bg = "#121621" },
        tab_close = { fg = "#FF3333", bg = "#0A0E1A" },

        -- offset
        offset_separator = { fg = "#FFAE57", bg = "#0A0E1A" },
      },
    }
  end,
}
