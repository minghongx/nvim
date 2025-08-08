return {
  cmd = { 'haskell-language-server-wrapper', '--lsp' },
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
  root_markers = {
    'hie.yaml',
    'cabal.project',
    -- TODO Pattern matching '*.cabal'
    -- https://github.com/neovim/neovim/issues/33444
    -- https://github.com/neovim/nvim-lspconfig/pull/3711
  },
  settings = {
    haskell = {
      formattingProvider = 'ormolu',
    },
  },
}
