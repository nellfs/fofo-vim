return require('packer').startup(function(use)

require "core.options"

use { "catppuccin/nvim", as = "catppuccin" }

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  
use {
    'goolord/alpha-nvim',
    config = function ()
   	(require'plugins.configs.alpha').setup()
    end
}
  
end)

