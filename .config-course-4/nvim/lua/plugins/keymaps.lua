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

-- telescope keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "find-files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "find-git-files" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "find-grep-word" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "find-grep-string" })
vim.keymap.set("n", "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "find-buffer-fuzzy" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "find-buffers" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "find-previously-opened-files" })
-- vim.keymap.set("n", "<leader>fx", "<cmd>TodoTelescope<CR>", { desc = "find-trouble-todos" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "find-help-tags" })
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "find-marks" })
-- vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<CR>", { desc = "find-quickfix" })
-- vim.keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<CR>", { desc = "find-jumplist" })
-- vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<CR>", { desc = "find-registers" })
