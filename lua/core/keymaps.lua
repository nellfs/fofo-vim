vim.g.mapleader = " "

local keymap = vim.keymap
local builtin = require('telescope.builtin')

-- previous
keymap.set("n", "pv", vim.cmd.Ex)

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", "nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x"')

-- telescope
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.ft.input("Grep > ") });
end)

-- git
vim.keymap.set('n', '<leader>gs', vim.cmd.Git);
