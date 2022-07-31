--[[

WARNING: This (0.8) would be a good time to eliminate vim.opt then. We only need vim.o.
https://github.com/neovim/neovim/pull/19477#issuecomment-1194040328

--]]

local opt = vim.opt

opt.relativenumber = true -- Show line numbers
opt.number = true -- But show the actual number for the line the cursor is on
opt.scrolloff = 10 -- Lines below the cursor
opt.breakindent = true

