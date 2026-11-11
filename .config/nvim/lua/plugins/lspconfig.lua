return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local icons = require("config.icons").diagnostics

    -- lua_ls
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- library is managed by lazydev.nvim (only loads what you require)
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- set up LspAttach autocmd for keymaps
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local function map(lhs, rhs, desc, extra)
          vim.keymap.set(
            "n",
            lhs,
            rhs,
            vim.tbl_extend("force", { buffer = ev.buf, silent = true, desc = desc }, extra or {})
          )
        end

        map("gD", vim.lsp.buf.declaration, "Go to declaration")
        map("gd", vim.lsp.buf.definition, "Go to definition")
        -- nowait: fire immediately instead of waiting on the built-in grn/gra/grr/gri maps
        map("gr", "<cmd>FzfLua lsp_references<cr>", "References", { nowait = true })
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("<leader>d", vim.diagnostic.open_float, "Line diagnostics")
      end,
    })

    -- setup diagnostics
    local sev = vim.diagnostic.severity
    vim.diagnostic.config {
      virtual_text = {
        prefix = "●",
        spacing = 4,
        format = function(diagnostic)
          if diagnostic.source then
            return string.format("%s: %s", diagnostic.source, diagnostic.message)
          end
          return diagnostic.message
        end,
      },
      signs = {
        text = {
          [sev.ERROR] = icons.error,
          [sev.WARN] = icons.warn,
          [sev.INFO] = icons.info,
          [sev.HINT] = icons.hint,
        },
      },
      float = { border = "rounded", source = true },
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    }

    -- enable LSP servers
    vim.lsp.enable { "rust_analyzer", "lua_ls", "ty", "ts_ls", "astro" }
  end,
}
