return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier", stop_after_first = true },
      typescript = { "prettier", stop_after_first = true },
      rust = { "rustfmt" }
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
}
