local servers = { 'pyright', 'hls' }

local on_attach = function(client, bufnr)
  -- this code gets executed when a language server is attached to a buffer
  -- you can add your keybindings and commands here.
end

-- Add additional capabilities supported by nvim-cmp
-- See: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for _, server in ipairs(servers) do
  require('lspconfig')[server].setup {
    on_attach    = on_attach,
    capabilities = capabilities,
  }
end

