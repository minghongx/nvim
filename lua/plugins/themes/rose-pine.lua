require('rose-pine').setup {
  dark_variant             = 'moon', -- 'main' or 'moon'
  bold_vert_split          = false,
  dim_nc_background        = false,
  disable_background       = false,
  disable_float_background = false,
  disable_italics          = false,

  -- Refer to rosepinetheme.com/palette
  -- Value can be a named colour or string hex
  groups = {
    background  = 'base',
    panel       = 'surface',
    border      = 'highlight_med',
    comment     = 'muted',
    link        = 'iris',
    punctuation = 'subtle',

    error = 'love',
    hint  = 'iris',
    info  = 'foam',
    warn  = 'gold',

    headings = {
      h1 = 'iris',
      h2 = 'foam',
      h3 = 'rose',
      h4 = 'gold',
      h5 = 'pine',
      h6 = 'foam',
    }
  },

  -- Change specific vim highlight groups
  highlight_groups = {
    ColorColumn = { bg = 'rose' }
  }
}

vim.cmd('colorscheme rose-pine')
