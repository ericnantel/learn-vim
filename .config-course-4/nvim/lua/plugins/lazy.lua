local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
	spec = {
		-- plenary
		-- all the lua functions I don't want to write twice
		{
			"nvim-lua/plenary.nvim",
		},
		-- nvim-web-devicons
		-- lua 'fork' of vim-web-devicons for neovim
		{
			"nvim-tree/nvim-web-devicons",
			lazy = true,
		},
		-- vim-tmux-navigator
		-- seamless navigation between tmux panes and vim splits
		{
			"christoomey/vim-tmux-navigator",
		},
		-- vim-maximizer
		-- maximizes and restores the current window in vim
		{
			"szw/vim-maximizer",
		},
		-- vim-signature
		-- a vim plugin to toggle, display & navigate marks
		{
			"kshenoy/vim-signature",
		},
		-- vim-commentary
		-- comment stuff out
		{
			"tpope/vim-commentary",
		},
		-- vim-gitgutter
		-- a vim plugin which shows git diff markers in the sign column
		{
			"airblade/vim-gitgutter",
		},
		-- vim-fugitive
		-- a git wrapper so awesome, it should be illegal
		{
			"tpope/vim-fugitive",
		},
		-- which-key
		-- lua plugin for Neovim 0.5 that displays a pop with possible keybindings
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {},
		},
		-- dressing
		-- Neovim plugin to improve the default vim.ui interfaces
		{
			"stevearc/dressing.nvim",
			event = "VeryLazy",
			opts = {},
		},
		{
			"nvim-lualine/lualine.nvim",
			lazy = false,
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"tpope/vim-fugitive",
			},
			config = function()
				local lualine = require("lualine")
				local lazystatus = require("lazy.status")
				lualine.setup({
					options = {
						icons_enabled = true,
						theme = "auto",
						component_separators = "",
						section_separators = "",
						disabled_filetypes = {
							"alpha",
						},
					},
					sections = {
						lualine_a = {
							"mode",
						},
						lualine_b = {
							"branch",
							"diff",
							"diagnostics",
						},
						lualine_c = {
							"filename",
						},
						lualine_x = {
							{
								lazystatus.updates,
								cond = lazystatus.has_updates,
								color = {
									fg = "#ff9e64",
								},
							},
							"encoding",
							"fileformat",
							"filetype",
						},
						lualine_y = {
							{
								"datetime",
								style = "%a %H:%M",
							},
						},
						lualine_z = {
							"progress",
							"location",
						},
					},
					inactive_sections = {
						lualine_a = {},
						lualine_b = {},
						lualine_c = {
							"filename",
						},
						lualine_x = {
							"location",
						},
						lualine_y = {},
						lualine_z = {},
					},
					extensions = {
						"fugitive",
						"lazy",
						"mason",
						-- 'nerdtree',
						"nvim-tree",
						-- 'oil',
						"trouble",
					},
				})
			end,
		},
		-- telescope
		--
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
				},
				"nvim-telescope/telescope-smart-history.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
				-- "kkharji/sqlite.lua",
			},
			config = function()
				local data = vim.fn.stdpath("data")
				local history_path = data .. "/telescope_history.sqlite3"
				local telescope = require("telescope")
				local themes = require("telescope.themes")
				local builtin = require("telescope.builtin")
				local actions = require("telescope.actions")
				local utils = require("telescope.utils")
				telescope.setup({
					defaults = {
						layout_strategy = "horizontal",
						layout_config = {
							anchor = "N",
							height = 0.85,
							mirror = true,
							preview_width = 0.55,
							prompt_position = "top",
							width = 0.85,
						},
						sorting_strategy = "ascending",
						path_display = {
							-- "smart",
							"truncate",
						},
						mappings = {
							i = {
								-- NOTE: Find another keybind to toggle select (default was TAB)
								["<TAB>"] = actions.move_selection_next,
								["<S-TAB>"] = actions.move_selection_previous,
								["<C-s>"] = actions.toggle_selection,
								["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
							},
						},
						preview = {
							treesitter = true,
						},
						color_devicons = true,
						file_ignore_patterns = {
							".git",
							--".hg",
							--".svn",
							--"%.o",
							--"%.obj",
							--"%.fbx",
							--"%.FBX",
							--"%.ttf",
							--"%.mp3",
							--"%.wav",
							--"%.ogg",
							--"%.zip",
							--"%.exe",
							--"%.dll",
							--"%.a",
							--"%.so",
							--"%.pyc",
							--"%.ico",
							--"%.tif",
							--"%.bmp",
							--"%.jpg",
							--"%.jpeg",
							--"%.png",
							--"%.tga",
							--"%.psd",
							--"%.svg",
							--"%.bak",
							--"%.cache",
							--"%.class",
							--"%.idea",
							--"%.swp",
							--"%.DS_Store",
							--"%.meta",
							-- --'^node_modules/', '^build/', '^dist/', '^out/',
							--"node_modules/.*",
							--"build/.*",
							--"dist/.*",
							--"out/.*",
						},
					},
					pickers = {
						find_files = {
							hidden = true,
						},
					},
					extensions = {
						wrap_results = true,
						fzf = {
							fuzzy = true,
							override_generic_sorter = true,
							override_file_sorter = true,
							case_mode = "smart_case",
						},
						history = {
							path = history_path,
							limit = 100,
						},
						["ui-select"] = {
							themes.get_dropdown({}),
						},
					},
				})
				pcall(telescope.load_extension, "fzf")
				pcall(telescope.load_extension, "smart_history")
				pcall(telescope.load_extension, "ui-select")
			end,
		},
		-- catppuccin
		--
		{
			"catppuccin/nvim",
			name = "catppuccin",
			lazy = true,
			config = function()
				local catppuccin = require("catppuccin")
				catppuccin.setup({
					flavour = "auto",
					background = {
						light = "latte",
						dark = "mocha",
					},
					integrations = {
						-- alpha = true,
						cmp = true,
						harpoon = true,
						gitgutter = true,
						mason = true,
						nvimtree = true,
						telescope = true,
						treesitter = true,
						which_key = true,
					},
				})
			end,
		},
		-- night-owl
		-- NOTE: Requires a terminal that supports truecolor (24Bit)
		-- Otherwise, make it lazy and comment priority
		{
			"oxfist/night-owl.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				local nightowl = require("night-owl")
				nightowl.setup()

				vim.cmd.colorscheme("night-owl")
			end,
		},
	},
	defaults = {
		lazy = false,
	},
	git = {
		log = { "-6" },
	},
	dev = {
		fallback = false,
	},
	install = {
		missing = true,
		-- colorscheme = { "darcula" },
	},
	ui = {
		size = {
			width = 0.75,
			height = 0.75,
		},
		title_pos = "center",
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
	performance = {
		cache = {
			enabled = true,
		},
	},
})
