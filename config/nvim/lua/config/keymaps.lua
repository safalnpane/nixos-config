local km = vim.keymap

vim.g.mapleader = " "

-- Splits
km.set("n", "ss", ":split<CR>", { desc = "Split Horizontally" })
km.set("n", "sv", ":vsplit<CR>", { desc = "Split Vertically" })
km.set("n", "sh", "<c-w>h", { desc = "Jump To Left Split" })
km.set("n", "sl", "<c-w>l", { desc = "Jump To Right Split" })
km.set("n", "sj", "<c-w>j", { desc = "Jump To Bottom Split" })
km.set("n", "sk", "<c-w>k", { desc = "Jump To Top Split" })

-- NvimTree
km.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open File Explorer" })

-- Diagnostics
km.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show Diagnostic on Float window" })

-- Telescope
km.set("n", "<leader>f", ":Telescope find_files<CR>", { desc = "Telescope Find Files" })
