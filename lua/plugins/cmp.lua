vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

local cmp     = require('cmp')
local lspkind = require('lspkind')

cmp.setup {

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  sources = cmp.config.sources {
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'path'     },
    { name = 'luasnip'  },
  }, {
    { name = 'buffer', keyword_length = 5 },
  },

  mapping = cmp.mapping.preset.insert {
    ['<C-d>'    ] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'    ] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'    ] = cmp.mapping.abort(),
    ['<CR>'     ] = cmp.mapping.confirm { select=true },
  },

  formatting = {
    format = lspkind.cmp_format {
      mode = 'symbol_text',
      menu = {
        buffer   = '[buf]',
        path     = '[path]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[API]',
        luasnip  = '[snip]',
      },
    },
  },

  window = {
    documentation = cmp.config.window.bordered(),
  },

}

-- Use buffer source for `/`
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  },
})

