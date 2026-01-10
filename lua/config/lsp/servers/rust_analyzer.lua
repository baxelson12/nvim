return function(lspconfig, handlers)
  return { cmd = { "rustup", "run", "stable", "rust-analyzer" }, capabilities = handlers.capabilities }
end
