local opt = vim.opt -- local shorthand aja

-- line and linenum
opt.relativenumber = true
opt.number = true
opt.linebreak = true

-- tab and indent
opt.tabstop = 3 -- dengan begini value shiftwidth = tabstop
opt.shiftwidth = 3
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursorline
opt.cursorline = true

-- backspace key tweak
opt.backspace = "indent,eol,start"

-- clipboard tweak
opt.clipboard:append("unnamedplus")

-- misc
opt.iskeyword:append("-")
