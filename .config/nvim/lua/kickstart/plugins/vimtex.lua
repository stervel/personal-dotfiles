return {
  {
    'lervag/vimtex',

    init = function()
      vim.g.vimtex_view_method = 'general'
      vim.syntax = 'enable'
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_format_enabled = 1
      vim.g.vimtex_complete_enabled = 1
      vim.g.vimtex_indent_enabled = 1
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
