local M = {}

-- Custom Packer initialization
M.options = {
    compile_on_sync = true,
    auto_clean = true,
    git = {clone_timeout = 6000},
    display = {
        working_sym = '⟳', 
        error_sym = '✗', 
        done_sym = '✓', 
        removed_sym = '-', 
        moved_sym = '→', 
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}

M.run = function(plugins)
    local present, packer = pcall(require, "packer")

    if not present then
        return
    end

    packer.init (M.options)

    packer.startup(function(use)
        for _, v in pairs(plugins) do 
            print(v)
            use(v)
        end
    end)
end

return M