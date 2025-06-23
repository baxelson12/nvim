local conf = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local bufnr = ev.buf
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    if client.server_capabilities.inlayHintProvider then
      vim.lsp.inlay_hint.enable(true)
    end
  end
})

conf.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "describe", "it", "before_each", "after_each" },
      },
    },
  },
})

conf.cssls.setup({})

conf.html.setup({})

-- conf.solidity_ls.setup({})
--
conf.solidity_ls.setup({
  capabilities = capabilities,
  settings = {
    solidity = {
      compileUsingRemoteVersion = 'v0.8.26',
      defaultCompiler = 'remote',
      enabledAsYouTypeCompilationErrorCheck = true,
    },
  }
})

conf.ts_ls.setup({
  capabilities = capabilities,
  single_file_support = false,
  root_dir = conf.util.root_pattern("package.json"),
  init_options = {
    -- REF: https://github.com/microsoft/TypeScript/blob/v5.0.4/src/server/protocol.ts#L3439
    preferences = {
      includeInlayParameterNameHints = 'all',
      includeInlayParameterNameHintsWhenArgumentMatchesName = true,
      includeInlayFunctionParameterTypeHints = true,
      includeInlayVariableTypeHints = true,
      includeInlayPropertyDeclarationTypeHints = true,
      includeInlayFunctionLikeReturnTypeHints = true,
      includeInlayEnumMemberValueHints = true,
      importModuleSpecifierPreference = 'non-relative',
    },
  },
})

-- conf.tsserver.setup({
--   on_attach = on_attach,
--   root_dir = conf.util.root_pattern("package.json"),
--   single_file_support = false,
--   settings = {
--     typescript = {
--       inlayHints = {
--         includeInlayParameterNameHints = "all",
--         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
--         includeInlayFunctionParameterTypeHints = true,
--         includeInlayVariableTypeHints = true,
--         includeInlayVariableTypeHintsWhenTypeMatchesName = true,
--         includeInlayPropertyDeclarationTypeHints = true,
--         includeInlayFunctionLikeReturnTypeHints = true,
--         includeInlayEnumMemberValueHints = true,
--       },
--     },
--     javascript = {
--       inlayHints = {
--         includeInlayParameterNameHints = "all",
--         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
--         includeInlayFunctionParameterTypeHints = true,
--         includeInlayVariableTypeHints = true,
--         includeInlayVariableTypeHintsWhenTypeMatchesName = true,
--         includeInlayPropertyDeclarationTypeHints = true,
--         includeInlayFunctionLikeReturnTypeHints = true,
--         includeInlayEnumMemberValueHints = true,
--       },
--     },
--   }
-- })

conf.rust_analyzer.setup({})

conf.clangd.setup({})

conf.denols.setup {
  on_attach = on_attach,
  root_dir = conf.util.root_pattern("deno.json", "deno.jsonc"),
}
