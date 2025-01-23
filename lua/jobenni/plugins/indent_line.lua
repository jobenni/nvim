return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable lukas-reineke/indent-blankline.nvim
    -- See :help ibl
    main = 'ibl',
    config = function()
      local hooks = require 'ibl.hooks'

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#efb5ba' })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#f2dfbd' })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#b0d7f7' })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#e8ccb3' })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#cbe1bc' })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#e2bbee' })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#abdae0' })
      end)

      require('ibl').setup {
        scope = { enabled = false },
        indent = {
          char = '┆',
          smart_indent_cap = true,
          highlight = {
            'RainbowRed',
            'RainbowYellow',
            'RainbowBlue',
            'RainbowOrange',
            'RainbowGreen',
            'RainbowViolet',
            'RainbowCyan',
          },
        },
      }
    end,
  },
}
