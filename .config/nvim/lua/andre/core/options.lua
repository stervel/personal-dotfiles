local opt = vim.opt -- shorthand aja

-- lines and line numbers
opt.relativenumber = true
opt.number = true
opt.linebreak = true

-- tabs and indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wraps
-- opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor lines
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

-- backspace key tweak
opt.backspace = "indent,eol,start"

-- clipboard tweak
opt.clipboard:append("unnamedplus")

-- splitting windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- fold (with treesitter)
opt.foldcolumn = "1"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99

