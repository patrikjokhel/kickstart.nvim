return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    enabled = true,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        float = {
          transparent = true,
          solid = false,
        },
        highlight_overrides = {
          mocha = function(mocha)
            return {
              Comment = {
                fg = mocha.base,
                bg = mocha.overlay0,
              },
            }
          end,
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
