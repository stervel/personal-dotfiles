local setup, vimtex = pcall(require, "vimtex")
if not setup then
    return
end

vim.syntax = "enable"
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "okular"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_format_enabled = 1
vim.g.vimtex_complete_enabled = 1
