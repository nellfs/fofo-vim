local opt = vim.opt
local g = vim.g

opt.laststatus = 3 
opt.showmode = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers 
opt.number = true
opt.numberwidth = 2
opt.ruler = false


