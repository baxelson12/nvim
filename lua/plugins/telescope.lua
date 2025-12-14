return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  -- or                              , branch = '0.1.x',
  dependencies = { { "emmanueltouzery/plenary.nvim", branch = "winborder" }, "BurntSushi/ripgrep" },
  config = function()
    local telescope = require('telescope')
    local themes = require('telescope.themes')
    local ivy = themes.get_ivy()
    ivy.layout_config.height = 30
    telescope.setup {
      defaults = ivy,
    }
  end
}
