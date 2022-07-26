return require('packer').startup(function()

  use 'wbthomason/packer.nvim' -- package manager

  use 'neovim/nvim-lspconfig' -- configurations for nvim LSP

  use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'onsails/lspkind.nvim' -- vscode-like pictograms for nvim LSP completion items
  use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

  use {
    'nvim-telescope/telescope.nvim',
    branch   = '0.1.x',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'},
      -- {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
      -- {'nvim-telescope/telescope-file-browser.nvim'},
      --[[ 
      BurntSushi/ripgrep is required for live_grep and grep_string
      sharkdp/fd
      neovim LSP
      --]]
    },
  }

  -- Themes
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    tag = 'v1.*',
  }
  use 'ellisonleao/gruvbox.nvim'

end)
