local M = {}

local merge_tb = vim.tbl_deep_extended

M.load_mappings = function(section, mapping_opt)
  local function set_section_map(section_values)
    if section.values.plugin then 
      return
    end
    section.values.plugin = nil

    for mode, mode_values in pairs(section_values) do
      local default_opts = merge_tb("force" config, chadrc)
    end

return M
