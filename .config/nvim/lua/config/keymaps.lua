local map = vim.keymap.set

-- normal mode keymaps
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { silent = true, desc = "Close Buffer" })

-- fzf-lua keymaps
map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
map("n", "<leader>fw", "<cmd>FzfLua live_grep<CR>", { desc = "Find Words" })
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>fc", "<cmd>FzfLua commands<cr>", { desc = "Commands" })
map("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help" })
map("n", "<leader>fs", "<cmd>FzfLua lsp_workspace_symbols<cr>", { desc = "LSP symbols" })
map("n", "<leader>fd", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Document symbols" })
map("n", "<leader>fD", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Diagnostics" })
map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format File" })

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })

-- bufferline
map("n", "<Tab>", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })

-- which-key
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "Whichkey All Keymaps" })
