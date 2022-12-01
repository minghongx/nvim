return require('packer').startup(function(use) -- https://github.com/wbthomason/packer.nvim/issues/243

  use 'wbthomason/packer.nvim' -- package manager

  use 'williamboman/mason.nvim'

  use {
    'neovim/nvim-lspconfig', -- configurations for nvim LSP
    'williamboman/mason-lspconfig.nvim',
  }

  use {
    'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'onsails/lspkind.nvim', -- vscode-like pictograms for nvim LSP completion items
    'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
    'mfussenegger/nvim-dap',
    -- UI/UX extensions
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    'nvim-telescope/telescope-dap.nvim',
  }

  use {
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = 'nvim-lua/plenary.nvim' },
      'kyazdani42/nvim-web-devicons',
 --   'nvim-telescope/telescope-file-browser.nvim',
 --    BurntSushi/ripgrep is required for live_grep and grep_string
 --    sharkdp/fd
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }

  use 'lervag/vimtex'

  use {
    'lewis6991/gitsigns.nvim',
    branch = 'main'
  }

  use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

  -- Themes
  use {
    { 'rose-pine/neovim', as = 'rose-pine', tag = 'v1.*' },
      'ellisonleao/gruvbox.nvim',
  }

end)
