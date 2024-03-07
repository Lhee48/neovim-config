local M = {
  "nvim-lualine/lualine.nvim",
}

function M.config()
  local icons = require "lhee.icons"
  local diff = {
    "diff",
    colored = false,
    symbols = {
      added = icons.git.LineAdded,
      modified = icons.git.LineModified,
      removed = icons.git.LineRemoved,
    }, -- changes diff symbols
  }

  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = {
      error = icons.diagnostics.BoldError,
      warn = icons.diagnostics.BoldWarning,
    },
    colored = false,
    always_visible = true,
  }

  local filetype = {
    "filetype",
    colored = false,
    icon_only = false,
  }

  local location = {
    "location",
    padding = 0,
  }

  require("lualine").setup {
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      disabled_filetypes = { "alpha", "dashboard" },
      always_divide_middle = true,
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { diagnostics },
      lualine_x = { diff, filetype },
      lualine_y = { location },
      lualine_z = { "progress" },
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
