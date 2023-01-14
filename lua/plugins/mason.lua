require('mason').setup { -- Refer to `:h mason-default-settings`
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗'
    }
  }
}


require('mason-lspconfig').setup { -- Refer to `:h mason-lspconfig-default-settings`
  ensure_installed = {},
}
