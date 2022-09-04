return require('packer').startup(function(use)

require "core.options"

use { "ellisonleao/gruvbox.nvim" }

vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])

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
        "goolord/alpha-nvim",
        config = function ()
        require('plugins.configs.alpha').setup()
        end
    }

  
end)

