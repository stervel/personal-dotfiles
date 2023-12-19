local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- trigger :PackerCompile everytime this file saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
use "wbthomason/packer.nvim"
use "nvim-lua/plenary.nvim" --dependencies for lua plugins

-- general
use "christoomey/vim-tmux-navigator" -- use hjkl to nav between splits
use "szw/vim-maximizer" -- maximize/restore windows
use "tpope/vim-surround"
use "nvim-tree/nvim-tree.lua" -- file explorer
use "kyazdani42/nvim-web-devicons" -- filetype icons
use "Raimondi/delimitMate" -- automatic closing surrounds
use {"neoclide/coc.nvim", branch = "master", run = "yarn install --frozen-lockfile"}
use {"numToStr/Comment.nvim",
    config = function()
        require('Comment').setup()
    end} -- commenting plugin
use {"nvim-treesitter/nvim-treesitter",
    run = function()
        local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
        ts_update()
    end,
    run = ":TSUpdate"
}
-- use {"kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async"} -- folding
--
-- visual
use "nvim-lualine/lualine.nvim"
use "NvChad/nvim-colorizer.lua"
-- use "dylanaraps/wal.vim"

-- file explorer
use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"} -- dependency of telescope.nvim
use {"nvim-telescope/telescope.nvim", branch = "0.1.x"}

-- latex writing
use "lervag/vimtex"
use "SirVer/ultisnips"
use "honza/vim-snippets"

-- colorscheme
use {"bluz71/vim-moonfly-colors", as = "moonfly"}
use {"mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim"}
use {"projekt0n/github-nvim-theme", branch = "0.0.x"}

    if packer_bootstrap then
        require("packer").sync()
    end
end)
