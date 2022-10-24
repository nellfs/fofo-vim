require('packer').startup(function(use)

use { "ellisonleao/gruvbox.nvim" }
use 'neovim/nvim-lspconfig' 
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

end)

vim.opt.number = true
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
