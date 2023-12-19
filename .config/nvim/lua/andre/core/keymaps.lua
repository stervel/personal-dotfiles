vim.g.mapleader = " "

local keymap = vim.keymap -- shorthand

-- general
keymap.set("n", "x", '"_x') -- x gak add ke clipboard

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equalize windows size
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window

keymap.set("n", "<leader>tn", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tk", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tj", ":tabp<CR>") -- prev tab



-- misc
-- increment-decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- plugin maps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- vimtex with coc
vim.cmd [[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <leader>ft :call vimtex#fzf#run()<CR>
]]

-- ufo folding
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
-- vim.keymap.set("n", "zR", require('ufo').openAllFolds)
-- vim.keymap.set('n', "zT", require('ufo').closeAllFolds)

