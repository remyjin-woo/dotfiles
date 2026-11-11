local map = vim.keymap.set

-- normal mode keymaps
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
-- mini.bufremove keeps the window open and shows another buffer in it,
-- instead of :bdelete closing the window and dropping you into nvim-tree
map("n", "<leader>x", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Close Buffer" })

-- fzf-lua keymaps
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
map("n", "<leader>fw", "<cmd>FzfLua live_grep<cr>", { desc = "Find words (live grep)" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>fc", "<cmd>FzfLua commands<cr>", { desc = "Commands" })
map("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help" })
map("n", "<leader>fs", "<cmd>FzfLua lsp_workspace_symbols<cr>", { desc = "LSP symbols" })
map("n", "<leader>fd", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Document symbols" })
map("n", "<leader>fD", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Diagnostics" })
map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_format = "fallback" }
end, { desc = "Format File" })

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })

-- bufferline
map("n", "<Tab>", "<cmd>bnext<CR>", { silent = true, desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { silent = true, desc = "Previous Buffer" })

-- which-key: all keymaps (moved off <leader>w so saving doesn't wait on timeoutlen)
map("n", "<leader>K", "<cmd>WhichKey<CR>", { desc = "Whichkey All Keymaps" })
