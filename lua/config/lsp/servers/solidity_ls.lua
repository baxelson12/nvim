return function(lspconfig, handlers)
  return {
    capabilities = handlers.capabilities,
    settings = {
      solidity = {
        compileUsingRemoteVersion = 'v0.8.26',
        defaultCompiler = 'remote',
        enabledAsYouTypeCompilationErrorCheck = true,
      },
    }
  }
end
