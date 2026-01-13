-- General Settings
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"  -- Always show sign column (prevents text shifting)
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = true

-- Tabs and Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse Support
vim.opt.mouse = "a"

-- Cursor: Always block, no blinking (all modes including insert)
vim.opt.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:block-blinkon0"

-- Split Management
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.guifont = "MesloLGS NF:h17"  -- You can adjust the size (h14) as needed

-- Keymaps
require("config.keymaps")
require("config.lazy")
