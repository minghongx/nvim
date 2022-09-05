return require('packer').startup(function(use) -- https://github.com/wbthomason/packer.nvim/issues/243

  use 'wbthomason/packer.nvim' -- package manager

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig', -- configurations for nvim LSP
  }

  use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

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
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
 -- { 'nvim-telescope/telescope-file-browser.nvim' },
 --    BurntSushi/ripgrep is required for live_grep and grep_string
 --    sharkdp/fd
  }

  use { 'lewis6991/gitsigns.nvim', tag = 'release' }

  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }

  use 'lervag/vimtex'

  -- Themes
  use {
    { 'rose-pine/neovim', as = 'rose-pine', tag = 'v1.*', },
      'ellisonleao/gruvbox.nvim',
  }

end)
