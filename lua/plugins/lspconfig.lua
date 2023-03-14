local lspconfig = require('lspconfig')

local servers = {
  'lua_ls',
  'pyright',
  'ccls', -- https://github.com/MaskRay/ccls/wiki/Project-Setup
}

local on_attach = function(client, bufnr)
  -- this code gets executed when a language server is attached to a buffer
  -- you can add your keybindings and commands here.
end

-- Add additional capabilities supported by nvim-cmp
-- See: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach    = on_attach,
    capabilities = capabilities,
  }
end


--[[

vim.lsp.buf.formatting does not respect indentation settings in .editorconfig or defaultConfig
https://github.com/sumneko/lua-language-server/issues/1068

https://github.com/CppCXY/EmmyLuaCodeStyle sumneko_lua depends on is poorly designed

--]]
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua are used (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

