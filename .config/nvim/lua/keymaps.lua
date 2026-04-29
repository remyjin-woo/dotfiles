local map = vim.keymap.set

-- set <leader> to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode keymaps
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { silent = true, desc = "Close Buffer" })

-- fzf-lua keymaps
map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
map("n", "<leader>fw", "<cmd>FzfLua live_grep<CR>", { desc = "Find Words" })

map({ "n", "x" }, "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format File" })

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })

-- bufferline
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })

-- which-key
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "Whichkey All Keymaps" })
