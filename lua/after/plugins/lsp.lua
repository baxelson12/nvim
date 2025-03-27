local lsp_zero = require("lsp-zero")
local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

local conf = require("lspconfig")

conf.lua_ls.setup({})
conf.cssls.setup({})
conf.html.setup({})
conf.solidity_ls.setup({})
conf.tsserver.setup({
  on_attach = lsp_zero.on_attach,
  root_dir = conf.util.root_pattern("package.json"),
  single_file_support = false
})
conf.rust_analyzer.setup({})
conf.clangd.setup({})
conf.denols.setup {
  on_attach = lsp_zero.on_attach,
  root_dir = conf.util.root_pattern("deno.json", "deno.jsonc"),
}
