--[[

WARNING: move out all builtins
https://github.com/nvim-telescope/telescope.nvim/issues/1228

Notice of breaking changes
https://github.com/nvim-telescope/telescope.nvim/issues/1470

--]]

require('plugins.telescope.key-mappings')
require('telescope').setup {
 
  defaults = {
    mappings = {
      n = {
        ['<C-C>'] = 'close', -- for consistency (consistent behaviour or treatment) of actions.close
      },
    },
    layout_config = {
      prompt_position = 'top',
    },
    sorting_strategy = 'ascending',
  },
 
  pickers = {

    builtin = {
      use_default_opts = true, -- https://github.com/nvim-telescope/telescope.nvim/pull/1996
      mappings = {
        i = {
          ['<esc>'] = 'close', -- normal mode is useless for builtin picker
        },
      },
      layout_strategy = 'center',
      layout_config = {
        prompt_position = 'bottom',
      },
      sorting_strategy = 'ascending',
      previewer = false,
      preview_title = false,
      results_title = 'Builtin Pickers',
      prompt_title = false,
    },

    buffers = {
      initial_mode = 'normal', 
    },

  },

  extensions = {
    -- Extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}



local M = {}

function M.edit_nvim()
  require('telescope.builtin').find_files {
    cwd = '~/.config/nvim',
    prompt_title = false,
    results_title = false,
    preview_title = '~ edit nvim ~',
    path_display = {'shorten'},
    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.7,
    },
  }
end

return M
