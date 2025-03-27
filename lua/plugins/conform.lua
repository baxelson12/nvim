return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" } },
      rust = { "rustfmt" }
    },
    format_on_save = { timeout_ms = 1000, lsp_fallback = true },
  },
}
