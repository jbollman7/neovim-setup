local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- Grep thing is awesome, leader ps allows you to type in a grep search and shows all results!
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
 -- All file search{}) -- All file search

