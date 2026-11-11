return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = function()
    local p = require "config.palette"
    local icons = require("config.icons").diagnostics

    -- same layering as kitty's tab bar:
    --   fill = darkest, inactive tabs = panel, selected tab = editor bg
    local fill = p.bg_dark
    local inactive = p.bg_panel
    local selected = p.bg

    return {
      options = {
        separator_style = "slope",
        enforce_regular_tabs = false,

        indicator = {
          style = "icon",
          icon = "▎",
        },

        -- Compact diagnostics
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, _, _)
          local icon = ({
            error = icons.error,
            warning = icons.warn,
            info = icons.info,
            hint = icons.hint,
          })[level] or ""
          return " " .. icon .. " " .. count
        end,

        -- Behavior
        close_command = function(n)
          require("mini.bufremove").delete(n, true)
        end,
        right_mouse_command = function(n)
          require("mini.bufremove").delete(n, true)
        end,
        left_mouse_command = "buffer %d",
        middle_mouse_command = function(n)
          require("mini.bufremove").delete(n, true)
        end,
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

        offsets = {
          {
            filetype = "NvimTree",
            text = "  Explorer",
            text_align = "left",
            highlight = "BufferLineOffset",
            separator = true,
          },
        },
      },

      highlights = {
        -- fill / background
        fill = { bg = fill },
        background = { fg = p.fg_muted, bg = inactive },
        buffer_visible = { fg = p.fg, bg = inactive },
        buffer_selected = { fg = p.accent, bg = selected, bold = true, italic = false },

        -- active indicator
        indicator_visible = { fg = inactive, bg = inactive },
        indicator_selected = { fg = p.accent, bg = selected },

        -- separators (slope): fg is the gap colour between tabs
        separator = { fg = fill, bg = inactive },
        separator_visible = { fg = fill, bg = inactive },
        separator_selected = { fg = fill, bg = selected },
        offset_separator = { fg = p.bg_panel, bg = fill },

        -- close buttons
        close_button = { fg = p.fg_muted, bg = inactive },
        close_button_visible = { fg = p.fg_muted, bg = inactive },
        close_button_selected = { fg = p.fg, bg = selected },

        -- modified marker
        modified = { fg = p.accent, bg = inactive },
        modified_visible = { fg = p.accent, bg = inactive },
        modified_selected = { fg = p.orange, bg = selected },

        -- diagnostics (counts + icons)
        error = { fg = p.red, bg = inactive },
        error_visible = { fg = p.red, bg = inactive },
        error_selected = { fg = p.red, bg = selected, bold = true },
        error_diagnostic = { fg = p.red, bg = inactive },
        error_diagnostic_visible = { fg = p.red, bg = inactive },
        error_diagnostic_selected = { fg = p.red, bg = selected },
        warning = { fg = p.orange, bg = inactive },
        warning_visible = { fg = p.orange, bg = inactive },
        warning_selected = { fg = p.orange, bg = selected, bold = true },
        warning_diagnostic = { fg = p.orange, bg = inactive },
        warning_diagnostic_visible = { fg = p.orange, bg = inactive },
        warning_diagnostic_selected = { fg = p.orange, bg = selected },
        info = { fg = p.blue, bg = inactive },
        info_visible = { fg = p.blue, bg = inactive },
        info_selected = { fg = p.blue, bg = selected, bold = true },
        info_diagnostic = { fg = p.blue, bg = inactive },
        info_diagnostic_visible = { fg = p.blue, bg = inactive },
        info_diagnostic_selected = { fg = p.blue, bg = selected },
        hint = { fg = p.teal, bg = inactive },
        hint_visible = { fg = p.teal, bg = inactive },
        hint_selected = { fg = p.teal, bg = selected, bold = true },
        hint_diagnostic = { fg = p.teal, bg = inactive },
        hint_diagnostic_visible = { fg = p.teal, bg = inactive },
        hint_diagnostic_selected = { fg = p.teal, bg = selected },

        -- duplicate buffers
        duplicate = { fg = p.fg_muted, bg = inactive, italic = true },
        duplicate_visible = { fg = p.fg_muted, bg = inactive, italic = true },
        duplicate_selected = { fg = p.accent, bg = selected, italic = true },

        -- tab pages
        tab = { fg = p.fg_muted, bg = inactive },
        tab_selected = { fg = p.bg_dark, bg = p.accent, bold = true },
        tab_separator = { fg = fill, bg = inactive },
        tab_separator_selected = { fg = fill, bg = p.accent },
        tab_close = { fg = p.red, bg = fill },
      },
    }
  end,
}
