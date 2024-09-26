-- return {
--   'shaunsingh/nord.nvim',
--   --"folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Example config in lua
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = true
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--
--     -- Load the colorscheme
--     require('nord').set()
--     --require("tokyonight.colors").setup() -- pass in any of the config options as explained above
--
--     -- Toggle background transparency
--     local bg_transparent = true
--
--     local toggle_transparency = function()
--       bg_transparent = not bg_transparent
--       vim.g.nord_disable_background = bg_transparent
--       vim.cmd [[colorscheme nord]]
--     end
--
--     vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--   end,
-- }

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local config = {
      style = "moon",
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      day_brightness = 0.3,
      dim_inactive = false,
      lualine_bold = false,
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors) end,
      cache = true,
      plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
      },
    }

    require("tokyonight").setup(config)
    vim.cmd [[colorscheme tokyonight]]

    local toggle_transparency = function()
      config.transparent = not config.transparent
      require("tokyonight").setup(config)
      vim.cmd [[colorscheme tokyonight]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
