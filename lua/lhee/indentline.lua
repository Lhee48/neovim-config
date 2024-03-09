local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
  commit = "9637670896b68805430e2f72cf5d16be5b97a22a",
}

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#B48EAD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#A3BE8C gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#EBCB8B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#D08770 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#BF616A gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#6A9589 gui=nocombine]]

function M.config()
  local icons = require "lhee.icons"

  require("indent_blankline").setup {
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "lazy",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "text",
    },
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    },
    context_char = icons.ui.LineMiddle,
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    use_treesitter = true,
    show_current_context = true,
  }
end

return M
