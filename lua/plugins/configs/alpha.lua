local M = {}

function M.setup()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    return
  end

  local dashboard = require "alpha.themes.dashboard"
  dashboard.section.header.val = {
[[      ⣠⠤⠖⠚⠛⠉⠛⠒⠒⠦⢤]],
[[⠀⠀⠀⠀⣠⠞⠁⠀⠀⠠⠒⠂⠀⠀⠀⠀⠀⠉⠳⡄]],
[[⠀⠀⠀⢸⠇⠀⠀⠀⢀⡄⠤⢤⣤⣤⡀⢀⣀⣀⣀⣹⡄]],
[[⠀⠀⠀⠘⢧⠀⠀⠀⠀⣙⣒⠚⠛⠋⠁⡈⠓⠴⢿⡿⠁]],
[[⠀⠀⠀⠀⠀⠙⠒⠤⢀⠛⠻⠿⠿⣖⣒⣁⠤⠒⠋]],
[[⠀⠀⠀⠀⠀⢀⣀⣀⠼⠀⠈⣻⠋⠉⠁]],
[[⠀⠀⠀⡴⠚⠉⠀⠀⠀⠀⠀⠈⠀⠐⢦]],
[[⠀⠀⣸⠃⠀⡴⠋⠉⠀⢄⣀⠤⢴⠄⠀⡇]],
[[⠀⢀⡏⠀⠀⠹⠶⢀⡔⠉⠀⠀⣼⠀⠀⡇]],
[[⠀⣼⠁⠀⠙⠦⣄⡀⣀⡤⠶⣉⣁⣀⠘]]
  }

  dashboard.section.buttons.val = {
      dashboard.button( "n", "  New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
  }
  
  local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date "%d-%m-%Y %H:%M:%S"
    local plugins_text = "   "
      .. total_plugins
      .. " plugins"
      .. "   v"
      .. vim.version().major
      .. "."
      .. vim.version().minor
      .. "."
      .. vim.version().patch
      .. "   "
      .. datetime
    -- Quote

    return plugins_text
  end
    
  dashboard.section.footer.val = footer()
  dashboard.opts.opts.noautocmd = true
  
  alpha.setup(dashboard.opts)
end

return M
