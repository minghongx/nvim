local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = vim.fn.getcwd() .. '/.venv/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

