local M = {}

function M.setup()
  local lspconfig = require("lspconfig")
  local handlers = require("config.lsp.handlers") -- Use the full path here too

  local servers_pattern = vim.fn.stdpath("config") .. "/lua/config/lsp/servers/*.lua"
  local server_files_str = vim.fn.glob(servers_pattern)
  local server_files = vim.split(server_files_str, "\n", { trimempty = true })

  if vim.tbl_isempty(server_files) then
    print("Warning: No LSP server configs found at: " .. servers_pattern)
    return
  end

  print("Configuring " .. #server_files .. " LSP server(s)...")

  for _, server_file_path in ipairs(server_files) do
    local server_name = vim.fn.fnamemodify(server_file_path, ":t:r")
    local get_server_config = require("config.lsp.servers." .. server_name)
    local server_config = get_server_config(lspconfig, handlers)

    lspconfig[server_name].setup(server_config)
  end
end

return M
