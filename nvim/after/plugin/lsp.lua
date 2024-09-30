local lsp = require('lsp-zero').preset({})


lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)


require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
	'pyright',
	'lua_ls',
	'clangd',
	'bashls'
})

lsp.setup()



local cmp = require "cmp"

require("cmp").setup {
  mapping = cmp.mapping.preset.insert {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      -- behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    -- ['<Tab>'] = cmp.mapping(function(fallback)
    --   if cmp.visible() then
    --     cmp.select_next_item()
    --   elseif luasnip.expand_or_jumpable() then
    --     luasnip.expand_or_jump()
    --   else
    --     fallback()
    --   end
    -- end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered(),
  },
  sources = {
	  { name = 'nvim_lsp' },
	  { name = 'luasnip' },
  },
  snippet = {
	  expand = function(args)
		  require('luasnip').lsp_expand(args.body)
	  end
  }
}

