local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/tokyonight.nvim",
    "nvim-lua/plenary.nvim", 
    "nvim-telescope/telescope.nvim",
    {
        'nvim-treesitter/nvim-treesitter',
        -- Specify the 'do' post-install/update action
        run = ':TSUpdate'
    },
    "tpope/vim-fugitive",
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- LSP Support
    'VonHeikemen/lsp-zero.nvim',
    {'neovim/nvim-lspconfig'},
    
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    'neovim/nvim-lspconfig',
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
      -- Autocompletion
    {'L3MON4D3/LuaSnip'},
    -- nice things to have
    -- commenting text
    'tpope/vim-commentary',
   -- Show indentation
    'Yggdroot/indentline',
   --Highlight yank for a second
    'machakann/vim-highlightedyank',
   -- Auto close braces, quites, etc'
    'windwp/nvim-autopairs',
   -- markdown previeuse 
    "toppair/peek.nvim",
     event = { "VeryLazy" },
     build = "deno task --quiet build:fast",
    -- harpoon
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
}, {})
--plenary is needed for telescope
-- telescope is a fuzzy finder with preview
-- Sets tokoyo night as color scheme
