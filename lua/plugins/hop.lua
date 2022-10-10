local hop = require('hop')
local map = vim.keymap.set

hop.setup {

}

map('n', 'w', function()
  hop.hint_words {}
end, {remap=true})

map('', 'f', function()
  hop.hint_char2 {}
end, {remap=true})
