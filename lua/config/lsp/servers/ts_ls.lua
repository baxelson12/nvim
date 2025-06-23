return function(lspconfig, handlers)
  return {
    capabilities = handlers.capabilities,
    single_file_support = false,
    root_dir = lspconfig.util.root_pattern("package.json"),
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
  }
end
