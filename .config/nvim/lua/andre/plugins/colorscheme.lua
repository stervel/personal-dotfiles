return{
"kepano/flexoki-neovim", 
name = "flexoki", 
lazy = false, -- so it loads at startup
config = function()
   vim.cmd([[colorscheme flexoki-light]])
end,
}
