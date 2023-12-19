return {
"nvim-tree/nvim-tree.lua",
dependencies = {
"nvim-tree/nvim-web-devicons"
},

   keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
   },

config = function()
require("nvim-tree").setup()

   -- recommended
   vim.g.loaded_netrw = 1
   vim.g.loaded_netrwPlugin = 1
end,
}
