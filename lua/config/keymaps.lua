local api = vim.api
local baseopts = { noremap = true, silent = true }


api.nvim_set_keymap("n", "<leader>q", "<cmd>Neotree<CR>", baseopts)
api.nvim_set_keymap("i", "jk", "<esc>", baseopts)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("leap").create_default_mappings()

api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })

-- Define the function to change screens with Ctrl-w
local function change_screen(direction)
  api.nvim_feedkeys(string.format("<C-w>%s", direction), "n", true)
end

-- Set up mappings for changing to screen above with leader, w, w
api.nvim_set_keymap('n', '<leader>ww', '<C-w>k', { noremap = true, silent = true })
-- Set up mappings for changing to screen below with leader, w, s
api.nvim_set_keymap('n', '<leader>ws', '<C-w>j', { noremap = true, silent = true })
-- Set up mappings for changing to screen left with leader, w, a
api.nvim_set_keymap('n', '<leader>wa', '<C-w>h', { noremap = true, silent = true })
-- Set up mappings for changing to screen right with leader, w, d
api.nvim_set_keymap('n', '<leader>wd', '<C-w>l', { noremap = true, silent = true })

-- Set up mappings for creating a horizontal split
api.nvim_set_keymap('n', '<leader>wh', '<C-w>s', { noremap = true, silent = true })
-- Set up mappings for creating a vertical split
api.nvim_set_keymap('n', '<leader>wv', '<C-w>v', { noremap = true, silent = true })

-- LSP mappings
vim.keymap.set("n", "<leader>xt", vim.lsp.buf.hover, { noremap = true, silent = true })
