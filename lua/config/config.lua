local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.relativenumber = true
opt.number = true
opt.statuscolumn = "%-2l %-3r "
-- vim.cmd([[colorscheme dracula-soft]])

local undodir = vim.fn.expand("~/.local/share/nvim/undo")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Enable persistent undo and set the undo directory
opt.undofile = true
opt.undodir = undodir

-- Borders
vim.opt.winborder = "rounded"
