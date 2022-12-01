local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = function()
    if os.getenv('VIRTUAL_ENV') ~= nil then
      return os.getenv('VIRTUAL_ENV') .. '/bin/python'
    else
      return nil
    end
  end;
  args = { '-m', 'debugpy.adapter' };
}

