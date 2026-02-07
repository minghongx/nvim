-- TODO: telescope
-- TODO: Git: gitsigns, neogit, vim-fugitive + vim-rhubarb?, or
--       https://github.com/akinsho/toggleterm.nvim#custom-terminal-usage
--       https://github.com/voldikss/vim-floaterm#lazygit

return {
  -- TODO: Add other treesitter plugins
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require('nvim-treesitter.configs')

      configs.setup {
        ensure_installed = {
          'haskell',
          'nix',
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- :help which-key-config
    },
  },

  {
    'numToStr/Comment.nvim',
    -- :help comment-nvim
    opts = {
      -- :help comment.config
    },
    lazy = false,
  },

  {
    url = "https://codeberg.org/andyg/leap.nvim",
    opts = {
      -- :help leap-config
    },
    config = function(_, opts)
      local leap = require('leap')
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end

      vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
      vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
    end,
  },

  'tpope/vim-sleuth', -- automatically adjusts 'shiftwidth' and 'expandtab'

  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    init = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'gruvbox'
    end,
    opts = {
      italic = {
        comments = false,
        strings = false,
      },
    },
  },
}
