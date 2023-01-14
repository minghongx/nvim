require 'plugin-manager'
require 'core.key-mappings'
require 'core.options'

require 'plugins.mason'
require 'plugins.lspconfig' -- Set up lspconfig after mason

require 'plugins.cmp'
require 'plugins.dap'
require 'plugins.telescope'
require 'plugins.hop'

-- Appearance
require 'plugins.treesitter'
require 'plugins.gitsigns'
require 'plugins.lsp_lines'
require 'plugins.themes.gruvbox'
