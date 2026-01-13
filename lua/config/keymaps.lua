-- Keymaps

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
vim.keymap.set('n', 'j', 'gj', { desc = 'Down', noremap = true})
vim.keymap.set('n', 'k', 'gk', { desc = 'Up', noremap = true})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
