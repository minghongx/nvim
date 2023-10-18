return {
  {
    'williamboman/mason.nvim',
    opts = {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    },
  },

  -- TODO: which-key
  -- TODO: LSP
  -- TODO: nvim-cmp
  -- TODO: telescope
  -- TODO: Git: gitsigns, neogit, vim-fugitive + vim-rhubarb?, or
  --       https://github.com/akinsho/toggleterm.nvim#custom-terminal-usage
  --       https://github.com/voldikss/vim-floaterm#lazygit

  {
    'numToStr/Comment.nvim',
    -- :help comment-nvim
    opts = {
      -- :help comment.config
    },
    lazy = false,
  },

  {
    'ggandor/leap.nvim',
    opts = {
      -- :help leap-config
      highlight_unlabeled_phase_one_targets = true,
    },
    config = function (_, opts)
      local leap = require('leap')
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end

      leap.add_default_mappings(true)
      -- reddit.com/r/neovim/comments/130kz2x/leap_users_do_you_actually_use_xx/
      vim.keymap.del({ 'x', 'o' }, 'x')
      vim.keymap.del({ 'x', 'o' }, 'X')
    end
  },

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

  { "nvim-tree/nvim-web-devicons", lazy = true }, -- loads upon requiring

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function () 
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        ensure_installed = {
          'lua',
          'nix',
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  },

  'tpope/vim-sleuth', -- automatically adjusts 'shiftwidth' and 'expandtab'
}
