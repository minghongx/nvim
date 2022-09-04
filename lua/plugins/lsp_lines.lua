vim.diagnostic.config {
  virtual_text = false, -- Disable virtual_text since it's redundant due to lsp_lines.
  virtual_lines = false
}

vim.keymap.set(
  '',
  '<Leader>l',
  require('lsp_lines').toggle,
  { desc = 'Toggle lsp_lines' }
)
