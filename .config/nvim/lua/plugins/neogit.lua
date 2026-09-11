return {
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "m00qek/baleia.nvim",
      "ibhagwan/fzf-lua",
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
      { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Neogit commit" },
      { "<leader>gl", "<cmd>Neogit log<cr>", desc = "Neogit log" },
    },
    opts = {
      graph_style = "unicode",
      kind = "tab",
      integrations = {
        diffview = true,
        fzf_lua = true,
      },
      commit_view = {
        kind = "vsplit",
        verify_commit = vim.fn.executable "gpg" == 1,
      },
    },
  },
}
