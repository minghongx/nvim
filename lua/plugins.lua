-- TODO: telescope
-- TODO: Git: gitsigns, neogit, vim-fugitive + vim-rhubarb?, or
--       https://github.com/akinsho/toggleterm.nvim#custom-terminal-usage
--       https://github.com/voldikss/vim-floaterm#lazygit

return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    keys = { { '<leader>cm', '<cmd>Mason<cr>', desc = 'Mason' } },
    build = ':MasonUpdate',
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

  {
    'neovim/nvim-lspconfig',
    -- TODO: Lazy load
    dependencies = {
      'mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
      { 'folke/neodev.nvim', opts = {} },
    },
    config = function()
      local servers = {
        lua_ls = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            completion = {
              callSnippet = 'Replace',
            },
          }
        },
        rust_analyzer = {},
      }

      local on_attach = function(client, bufnr)
        -- this code gets executed when a server is attached to a buffer
      end

      local mason_lspconfig = require('mason-lspconfig')
      mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers),
      }

      mason_lspconfig.setup_handlers {
        function(server_name)
          --- nvim-cmp supports additional completion capabilities
          local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
          local capabilities = vim.tbl_deep_extend(
            'force',
            {},
            vim.lsp.protocol.make_client_capabilities(),
            has_cmp and cmp_nvim_lsp.default_capabilities() or {}
          )

          require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
          }
        end,
      }
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    version = false, -- last release is way too old
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      ---@diagnostic disable-next-line missing-fields
      cmp.setup {
        ---@diagnostic disable-next-line missing-fields
        completion = {
          completeopt = 'menu,menuone,noinsert', -- preselect
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        -- :help cmp-config.sources
        sources = cmp.config.sources {
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer', keyword_length = 5 },
        },
      }

      luasnip.config.setup {}
    end,
  },

  -- TODO: Add other treesitter plugins
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require('nvim-treesitter.configs')

      ---@diagnostic disable-next-line missing-fields
      configs.setup {
        ensure_installed = {
          'lua',
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
    'ggandor/leap.nvim',
    opts = {
      -- :help leap-config
      highlight_unlabeled_phase_one_targets = true,
    },
    config = function(_, opts)
      local leap = require('leap')
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end

      leap.add_default_mappings(true)
      -- https://reddit.com/r/neovim/comments/130kz2x/leap_users_do_you_actually_use_xx/
      vim.keymap.del({ 'x', 'o' }, 'x')
      vim.keymap.del({ 'x', 'o' }, 'X')
    end,
  },

  'tpope/vim-sleuth', -- automatically adjusts 'shiftwidth' and 'expandtab'

  { 'nvim-tree/nvim-web-devicons', lazy = true }, -- loads upon requiring

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
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

  -- {
  --   'lukas-reineke/indent-blankline.nvim',
  --   main = 'ibl',
  --   config = function()
  --     local highlight = {
  --       'CursorColumn',
  --       'Whitespace',
  --     }
  --
  --     require('ibl').setup {
  --       indent = { highlight = highlight, char = '' },
  --       whitespace = {
  --         highlight = highlight,
  --         remove_blankline_trail = false,
  --       },
  --       scope = { enabled = false },
  --     }
  --   end,
  -- },
}
