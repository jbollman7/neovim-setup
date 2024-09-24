vim.g.mapleader = ' ' --Map leader button from back slash to space
vim.o.shell = 'bash'
vim.o.shellcmdflag = '-c'
-- Uncomment the next four lines for a better experience with terminal in vim.
-- vim.o.shell="pwsh"
-- vim.o.shellcmdflag = "-command"
-- vim.o.shellquote = "\\\""
-- vim.o.shellxquote = ""

--vim.o.shell = 'C:\\Windows\\System32\\bash.exe'
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) --In normal mode if I press space then pv, its the equivalent of colon Ex. You have to hold down the leader(space) and press pv
-- :so sources the file so you dont have to exit and renter

vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Keeps cursor in the middle of the screeen while doing half page down
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Keeps cursor in the middle of the screeen while doing half page up

vim.keymap.set('n', 'n', 'nzzzv') -- Keeps cursor in the middle of the screeen while doing searches
vim.keymap.set('n', 'N', 'Nzzzv') -- Keeps cursor in the middle of the screeen while doing searches

-- Greatest remap ever
-- Allows you to copy a piece of text over another highlighted piece of text
-- Deletes highlighted word into void register and paste the first word over it
vim.keymap.set('x', '<leader>p', '"_dP')
-- Toggle buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprev<CR>', { silent = true })

-- Remap
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true })
