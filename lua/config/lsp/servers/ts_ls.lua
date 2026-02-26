return function(lspconfig, handlers)
	local function organize_imports()
		local params = {
			command = "_typescript.organizeImports",
			arguments = { vim.api.nvim_buf_get_name(0) },
			title = "",
		}

		vim.lsp.buf.execute_command(params)
	end

	return {
		capabilities = handlers.capabilities,
		single_file_support = true,
		root_dir = function(bufnr, on_dir)
			local root_markers = { "package-lock.json", "yarn.lock", "pnpm-lock.yaml", "bun.lockb", "bun.lock" }
			root_markers = vim.fn.has("nvim-0.11.3") == 1 and { root_markers, { ".git" } }
				or vim.list_extend(root_markers, { ".git" })
			local deno_path = vim.fs.root(bufnr, { "deno.json", "deno.jsonc", "deno.lock" })
			local project_root = vim.fs.root(bufnr, root_markers)
			if deno_path and (not project_root or #deno_path >= #project_root) then
				return
			end

			on_dir(project_root or vim.fn.getcwd())
		end,
		init_options = {
			-- REF: https://github.com/microsoft/TypeScript/blob/v5.0.4/src/server/protocol.ts#L3439
			preferences = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
				importModuleSpecifierPreference = "non-relative",
			},
		},
		commands = {
			OrganizeImports = {
				organize_imports,
				description = "Organize Imports",
			},
		},
	}
end
