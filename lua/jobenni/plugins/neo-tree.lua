-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
      auto_clean_after_session_restore = true,
      popup_border_style = 'rounded',
      default_component_configs = {
        indent= {
          with_expanders = true,
        }
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false
        },
        follow_current_file = {
          enable = true,
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    },
    init = function()
      local keymap = vim.keymap
      keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<CR>', { desc = 'Toggle NeoTree' })
      keymap.set('n', '<leader>er', '<cmd>Neotree reveal<CR>', { desc = 'Reveal file in NeoTree' })
    end
  }
}
