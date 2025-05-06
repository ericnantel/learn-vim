vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
vim.keymap.set("v", "jk", "<ESC>", { desc = "Exit Visual Mode" })

vim.keymap.set("n", "+", "<C-a>", { desc = "Increment Number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement Number" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })
