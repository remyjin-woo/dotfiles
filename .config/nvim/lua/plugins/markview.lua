return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  opts = {
    preview = {
      enable = true,
      modes = { "n", "no" },
      filetypes = { "markdown", "quarto", "rmd" },
      buf_ignore = { "nofile" },
      max_buf_lines = 1000, -- skip rendering on huge files
      render_distance = { 100, 100 }, -- render 100 lines above/below cursor
    },
  },
}
