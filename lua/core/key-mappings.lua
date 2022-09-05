local map = vim.keymap.set

-- http://vim.wikia.com/wiki/Avoid_the_escape_key

vim.g.mapleader = ' ' -- Change the leader key from '\' to space (',' and ';' are also popular)

map({'n', 'v'}, ';', ':') -- Enter cmdline mode quicker
map({'n', 'v'}, ':', ';') -- Note: Use Hop or text object for repeats of f/F/t/T

-- window-moving
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

