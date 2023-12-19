local setup, nvimtreesitter = pcall(require, "nvim-treesitter")
if not setup then
    return
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "latex", "css", "json", "lua", "xml", "yaml" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },

    -- begin treesitter modules
    -- highlighting
  highlight = {
    enable = true,
    -- To disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 1000 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = true,
    },
}

