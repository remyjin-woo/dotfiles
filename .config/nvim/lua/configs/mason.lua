-- mason, mason-lspconfig and mason-tool-installer
require("mason").setup {}
require("mason-lspconfig").setup {}
require("mason-tool-installer").setup {
  ensure_installed = {
    "lua_ls",
    "stylua",
    "ruff",
    "ty",
  },
}
