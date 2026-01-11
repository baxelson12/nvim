return {
  -- {
  --   "Mofiqul/dracula.nvim",
  --   config = function()
  --     vim.cmd [[colorscheme dracula-soft]]
  --   end,
  -- },
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000, 
    config = function() 
      vim.cmd [[colorscheme catppuccin-frappe]]
    end
  },
}
