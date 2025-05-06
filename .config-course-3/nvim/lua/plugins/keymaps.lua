-- vim-tmux-navigator keymaps
vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Tmux Navigate Left", silent = true })
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Tmux Navigate Down", silent = true })
vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Tmux Navigate Up", silent = true })
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Tmux Navigate Right", silent = true })

-- vim-maximizer keymaps
vim.keymap.set(
	"n",
	"<leader>sm",
	"<cmd>MaximizerToggle<CR>",
	{ desc = "Maximize/Minimize Split Window", remap = false }
)
vim.keymap.set(
	"v",
	"<leader>sm",
	"<cmd>MaximizerToggle<CR>gv",
	{ desc = "Maximize/Minimize Split Window", remap = false }
)

-- vim-commentary keymaps
vim.keymap.set("n", "z", "gc", { desc = "", remap = true, silent = true })
vim.keymap.set("n", "zz", "gcc", { desc = "", remap = true, silent = true })
vim.keymap.set("v", "z", "gc", { desc = "", remap = true, silent = true })
