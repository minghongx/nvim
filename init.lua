require 'plugin-manager'
require 'core.key-mappings'
require 'core.options'

-- Set up in order: 1. mason.nvim, 2. mason-lspconfig.nvim, 3. lspconfig
require 'plugins.mason'
require 'plugins.mason-lspconfig'
require 'plugins.lspconfig'

require 'plugins.lsp_lines'
require 'plugins.cmp'
require 'plugins.treesitter'
require 'plugins.telescope'
require 'plugins.gitsigns'
require 'plugins.hop'
require 'plugins.vimtex'
require 'plugins.themes.gruvbox'
