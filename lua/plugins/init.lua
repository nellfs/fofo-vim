local plugins = {

    ["wbthomason/packer.nvim"] = {},

    ["goolord/alpha-nvim"] = {
        config = function ()
            require('plugins.configs.alpha').setup()
        end
    },

    ["nvim-neo-tree/neo-tree.nvim"] = {
        branch = "v2.x",
        requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
    }

}

require("core.packer").run(plugins)
