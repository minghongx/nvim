local hop = require('hop')
local map = vim.keymap.set

hop.setup {

}

map('n', 'w', function()
  hop.hint_words {}
end, {remap=true})

map('', 'f', function()
  hop.hint_char1 { current_line_only = true }
end, {remap=true})
