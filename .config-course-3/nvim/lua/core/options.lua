-- NOTE: Uncomment those two lines if using nvim-tree
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.opt.splitright = true
vim.opt.splitbelow = true

-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir-nvim"
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir-nvim"
vim.opt.undofile = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 2

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.shiftround = true
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.showmatch = false
vim.opt.ruler = false
vim.opt.title = false
vim.opt.cursorline = false
vim.opt.backup = false
vim.opt.writebackup = false

-- vim.opt.mouse = ""
-- vim.opt.ttymouse = ""
-- vim.opt.mousescroll = "ver:0,hor:0"
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.scrolloff = 5
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.updatetime = 300
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.history = 20

vim.opt.hidden = true
-- vim.opt.inccommand = "split"

vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore = "*.swp,*.DS_Store,*.meta"

vim.opt.path:append("**")

vim.opt.background = "dark"
vim.opt.syntax = on
vim.opt.termguicolors = true

-- NOTE: Will be using night-owl (see plugins.lazy.lua)
-- vim.cmd([[ colorscheme darcula ]])
