local opt = vim.opt

-- ui
opt.laststatus = 3
opt.showmode = false
opt.splitkeep = "screen"
opt.cursorline = true
opt.cursorlineopt = "number"
opt.signcolumn = "yes" -- stop gitsigns/diagnostics from shifting text
opt.scrolloff = 8
opt.winborder = "rounded" -- borders on all floats (hover, signature, etc.); needed with transparent NormalFloat

-- folds (treesitter sets foldexpr per buffer; files open fully unfolded)
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldtext = "" -- show the folded line with its syntax highlighting

-- numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

-- search
opt.ignorecase = true
opt.smartcase = true

-- misc
opt.clipboard = "unnamedplus"
opt.undofile = true
