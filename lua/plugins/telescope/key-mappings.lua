local map = vim.keymap.set -- Shorten function name

map('n', '<leader>f', function() require('telescope.builtin').builtin() end)
map('n', '<leader>en', function() require('plugins.telescope').edit_nvim() end, {desc = 'Edit nvim config'})

