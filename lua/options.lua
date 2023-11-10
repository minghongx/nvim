-- Sync clipboard between OS and Neovim
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.o.undofile = true

vim.o.updatetime = 250

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Show relative line numbers and the actual number of the line with the cursor
vim.wo.relativenumber = true; vim.wo.number = true

vim.o.list = true; vim.o.lcs = 'eol:¬,tab:»·,trail:·,precedes:◢,extends:◣'

-- Enable break indent
vim.o.breakindent = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- NOTE: Make sure the terminal supports this
vim.o.termguicolors = true
