local opt = vim.opt --for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.cursorcolumn = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

