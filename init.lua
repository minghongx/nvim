require 'plugin-manager'
require 'core.key-mappings'
require 'core.options'

-- Set up in order: 1. mason.nvim, 2. mason-lspconfig.nvim, 3. lspconfig
require 'plugins.mason'
require 'plugins.mason-lspconfig'
require 'plugins.lspconfig'

require 'plugins.cmp'
require 'plugins.dap'
require 'plugins.telescope'
require 'plugins.hop'

-- Appearance
require 'plugins.treesitter'
require 'plugins.gitsigns'
require 'plugins.lsp_lines'
require 'plugins.themes.gruvbox'

-- Language specific
require 'plugins.vimtex'

