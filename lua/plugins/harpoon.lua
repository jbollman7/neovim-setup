return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>a', desc = 'Harpoon add file' },
    { '<C-e>', desc = 'Harpoon menu' },
    { '<C-h>', desc = 'Harpoon file 1' },
    { '<C-j>', desc = 'Harpoon file 2' },
    { '<C-k>', desc = 'Harpoon file 3' },
    { '<C-l>', desc = 'Harpoon file 4' },
  },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Load the necessary harpoon modules
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- Key mappings
    vim.keymap.set('n', '<leader>a', mark.add_file)
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

    -- Navigation between files
    vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
    vim.keymap.set('n', '<C-j>', function() ui.nav_file(2) end)
    vim.keymap.set('n', '<C-k>', function() ui.nav_file(3) end)
    vim.keymap.set('n', '<C-l>', function() ui.nav_file(4) end)
  end,
}
