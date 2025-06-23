return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      biome = {
        require_cwd = true
      },
      prettier = {
        require_cwd = true
      },
      forge_fmt = {
        require_cwd = true
      }
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "biome", "prettier", stop_after_first = true },
      typescript = { "biome", "prettier", stop_after_first = true },
      rust = { "rustfmt" },
      json = { "biome", "prettier", stop_after_first = true },
      solidity = { "forge_fmt", stop_after_first = true }
    },
    format_on_save = { timeout_ms = 1500, lsp_fallback = true },
  },
}
