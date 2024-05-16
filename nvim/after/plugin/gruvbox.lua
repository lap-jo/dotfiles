-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
  italic = {
     strings = true,
     operators = true,
     comments = true,
     ...
  }
})
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")
