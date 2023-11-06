local map = vim.keymap.set

-- https://vim.wikia.com/wiki/Avoid_the_escape_key

vim.g.mapleader = ' ' -- , and ; are also popular

-- :help window-move-cursor
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
