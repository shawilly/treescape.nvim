-- Treescape.nvim - A calming nature-inspired Neovim colorscheme
-- Featuring forest greens, waterfall blues, and meadow pastels

local M = {}

M.config = {
  theme = "forest", -- "forest", "waterfall", or "meadow"
  transparent = false, -- Enable transparent background (terminal controls opacity)
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load(theme)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  -- Allow theme override from parameter or use config
  local active_theme = theme or M.config.theme or "forest"

  vim.g.colors_name = "treescape"
  vim.g.treescape_theme = active_theme
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local highlights = require("treescape.highlights")
  local palette = require("treescape.palette")

  -- Get the appropriate color palette
  local colors = palette.get_palette(active_theme)

  -- Apply all highlight groups
  highlights.setup(colors, M.config)

  -- Set terminal colors
  if M.config.terminal_colors then
    local terminal = palette.get_terminal(colors)
    for i, color in ipairs(terminal) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end
end

-- Convenience functions for loading specific themes
function M.forest()
  M.load("forest")
end

function M.waterfall()
  M.load("waterfall")
end

function M.meadow()
  M.load("meadow")
end

return M
