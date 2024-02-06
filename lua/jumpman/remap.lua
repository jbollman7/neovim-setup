vim.g.mapleader = " " --Map leader button from back slash to space
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  --In normal mode if I press space then pv, its the equivalent of colon Ex. You have to hold down the leader(space) and press pv
-- :so sources the file so you dont have to exit and renter

vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- Keeps cursor in the middle of the screeen while doing half page down
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- Keeps cursor in the middle of the screeen while doing half page up

vim.keymap.set("n", "n", "nzzzv")  -- Keeps cursor in the middle of the screeen while doing searches
vim.keymap.set("n", "N", "Nzzzv")  -- Keeps cursor in the middle of the screeen while doing searches

-- Greatest remap ever
-- Allows you to copy a piece of text over another highlighted piece of text
-- Deletes highlighted word into void register and paste the first word over it
vim.keymap.set("x", "<leader>p", "\"_dP")
