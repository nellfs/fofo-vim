require('packer').startup(function(use)

use { "ellisonleao/gruvbox.nvim" }

end)


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])