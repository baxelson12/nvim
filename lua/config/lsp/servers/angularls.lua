return function(lspconfig, handlers)
	return { capabilities = handlers.capabilities, root_dir = lspconfig.util.root_pattern("angular.json") }
end
