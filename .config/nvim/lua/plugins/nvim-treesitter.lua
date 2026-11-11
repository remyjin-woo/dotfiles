return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- 0.12+
  lazy = false, -- main branch does not support lazy-loading
  build = ":TSUpdate",
  config = function()
    -- async; already-installed parsers are skipped
    require("nvim-treesitter").install {
      "astro",
      "css",
      "html",
      "javascript",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
      "tsx",
      "typescript",
    }

    -- the main branch no longer enables highlighting/indent/folds itself
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("UserTreesitter", {}),
      callback = function(ev)
        if not pcall(vim.treesitter.start, ev.buf) then
          return -- no parser for this filetype; keep vim's defaults
        end
        local lang = vim.treesitter.language.get_lang(vim.bo[ev.buf].filetype)

        -- indent (experimental upstream; only where the parser ships indent queries)
        if vim.treesitter.query.get(lang, "indents") then
          vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end

        -- folds (open by default, see foldlevel in config/options.lua)
        if vim.treesitter.query.get(lang, "folds") then
          vim.wo[0][0].foldmethod = "expr"
          vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
        end
      end,
    })
  end,
}
