-- Lualine theme for Treescape.nvim
-- Dynamically uses the active theme's colors

local palette = require("treescape.palette")
local theme = vim.g.treescape_theme or "forest"
local c = palette.get_palette(theme)

return {
  normal = {
    a = { fg = c.bg, bg = c.green, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  insert = {
    a = { fg = c.bg, bg = c.bark, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  visual = {
    a = { fg = c.bg, bg = c.purple, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  replace = {
    a = { fg = c.bg, bg = c.berry, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  command = {
    a = { fg = c.bg, bg = c.sunflower, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  inactive = {
    a = { fg = c.comment, bg = c.bg_dark, gui = "bold" },
    b = { fg = c.comment, bg = c.bg_dark },
    c = { fg = c.comment, bg = c.bg_dark },
  },
}
