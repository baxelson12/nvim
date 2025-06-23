return function(lspconfig, handlers)
  return {
    capabilities = handlers.capabilities,
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim", "describe", "it", "before_each", "after_each" },
        },
      },
    },
  }
end
