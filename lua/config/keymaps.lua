-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
vim.keymap.set('n', 'j', 'gj', { desc = 'Down', noremap = true})
vim.keymap.set('n', 'k', 'gk', { desc = 'Up', noremap = true})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Move selected blocks up and down in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
