local map = vim.keymap.set

map('n', 't', function() require('telescope.builtin').builtin() end)
map('n', 'F', function() require('telescope.builtin').current_buffer_fuzzy_find() end)
map('n', '<leader>en', function() require('plugins.telescope').edit_nvim() end, {desc = 'Edit nvim config'})

