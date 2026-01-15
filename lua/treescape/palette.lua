-- Treescape colorscheme palette
-- A calming nature-inspired Neovim colorscheme
-- Featuring forest greens, waterfall blues, and meadow pastels

local M = {}

-- Forest theme - Deep greens, mossy tones, earthy browns (default)
-- Inspired by ancient woodland, moss-covered stones, and dappled sunlight
M.forest = {
  -- Base backgrounds (Forest floor at dusk)
  bg = "#1a2019",
  bg_dark = "#141816",
  bg_highlight = "#232b22",
  bg_visual = "#2d3d2b",

  -- Foregrounds (Sunlit leaves)
  fg = "#d4e4c7",
  fg_dark = "#b8ccab",
  fg_gutter = "#4a5a48",

  -- Primary greens (Various foliage)
  green = "#7cb87c",
  green_bright = "#a3d9a3",
  green_dim = "#5a8a5a",
  green_dark = "#3d5c3d",

  -- Earth tones (Bark, soil, fallen leaves)
  bark = "#a67c52",
  bark_dark = "#7a5a3a",
  moss = "#8fbc8f",
  soil = "#6b5344",
  soil_dark = "#4a3a2e",

  -- Accent colors (Wildflowers and berries)
  berry = "#d96b8c",
  berry_dark = "#a34d68",
  sunflower = "#e6c86e",
  orange = "#e89b5a",

  -- Water tones (Stream running through forest)
  stream = "#6bacb8",
  stream_dark = "#4a8a96",
  mist = "#88b4c4",

  -- Special (Rare forest finds)
  purple = "#9b8dc4",
  orchid = "#c98bb8",
  white = "#e8ece4",
  black = "#0f1210",

  -- UI specific
  border = "#4a6048",
  comment = "#6a8068",
  selection = "#3a4a38",
  cursorline = "#1f2a1e",
  pmenu = "#1c241b",
  pmenu_sel = "#3a4a38",

  -- Diff colors
  diff_add = "#243a24",
  diff_delete = "#3d2832",
  diff_change = "#2a3a28",
  diff_text = "#3a5a38",

  -- Git colors
  git_add = "#7cb87c",
  git_delete = "#d96b8c",
  git_change = "#e89b5a",

  -- Diagnostic colors
  error = "#d96b8c",
  warning = "#e89b5a",
  info = "#6bacb8",
  hint = "#8fbc8f",
}

-- Waterfall theme - Blues, teals, misty grays
-- Inspired by cascading waterfalls, river stones, and morning mist
M.waterfall = {
  -- Base backgrounds (Deep pool at waterfall base)
  bg = "#181e22",
  bg_dark = "#131619",
  bg_highlight = "#212930",
  bg_visual = "#2a3a44",

  -- Foregrounds (Spray and foam)
  fg = "#c8dce8",
  fg_dark = "#a8bcc8",
  fg_gutter = "#4a5a64",

  -- Primary blues (Water in various states)
  green = "#5eb5c4",
  green_bright = "#8ad4e2",
  green_dim = "#4a8a98",
  green_dark = "#3a6a78",

  -- Stone tones (River rocks, wet slate)
  bark = "#8a9aaa",
  bark_dark = "#6a7a8a",
  moss = "#7aacba",
  soil = "#5a6a78",
  soil_dark = "#4a5a66",

  -- Accent colors (Reflected sky, sunset on water)
  berry = "#c87a9a",
  berry_dark = "#a85a7a",
  sunflower = "#d4bc7a",
  orange = "#d4956a",

  -- Deep water tones
  stream = "#4a9aba",
  stream_dark = "#3a7a9a",
  mist = "#9ac4d4",

  -- Special (Rare stones, shells)
  purple = "#9a8ac4",
  orchid = "#b898b8",
  white = "#e4eaf0",
  black = "#0e1214",

  -- UI specific
  border = "#4a6878",
  comment = "#6a8898",
  selection = "#344a58",
  cursorline = "#1c2428",
  pmenu = "#1a2228",
  pmenu_sel = "#344a58",

  -- Diff colors
  diff_add = "#243848",
  diff_delete = "#3d2838",
  diff_change = "#2a3848",
  diff_text = "#3a5868",

  -- Git colors
  git_add = "#5eb5c4",
  git_delete = "#c87a9a",
  git_change = "#d4956a",

  -- Diagnostic colors
  error = "#c87a9a",
  warning = "#d4956a",
  info = "#4a9aba",
  hint = "#7aacba",
}

-- Meadow theme - Light, airy spring pastels
-- Inspired by flower-filled meadows, butterflies, and gentle breezes
M.meadow = {
  -- Base backgrounds (Shaded grass)
  bg = "#1e2420",
  bg_dark = "#181c18",
  bg_highlight = "#283028",
  bg_visual = "#344034",

  -- Foregrounds (Bright spring day)
  fg = "#e0ecd8",
  fg_dark = "#c4d8bc",
  fg_gutter = "#5a6a58",

  -- Primary greens (Fresh spring growth)
  green = "#88c888",
  green_bright = "#a8e8a8",
  green_dim = "#68a868",
  green_dark = "#487848",

  -- Warm pastels (Wildflowers)
  bark = "#d8a878",
  bark_dark = "#b88858",
  moss = "#98d898",
  soil = "#8a7868",
  soil_dark = "#6a5848",

  -- Flower colors (Poppies, lavender, buttercups)
  berry = "#e898a8",
  berry_dark = "#c87888",
  sunflower = "#f8d878",
  orange = "#f8b888",

  -- Sky tones (Clear spring sky)
  stream = "#78c8d8",
  stream_dark = "#58a8b8",
  mist = "#a8d8e8",

  -- Special (Butterflies, rare blooms)
  purple = "#b8a8d8",
  orchid = "#d8a8c8",
  white = "#f0f4ec",
  black = "#141814",

  -- UI specific
  border = "#588858",
  comment = "#78a878",
  selection = "#3e4e3c",
  cursorline = "#242e24",
  pmenu = "#202820",
  pmenu_sel = "#3e4e3c",

  -- Diff colors
  diff_add = "#2a4a2a",
  diff_delete = "#4a2a3a",
  diff_change = "#3a4a2a",
  diff_text = "#4a6a4a",

  -- Git colors
  git_add = "#88c888",
  git_delete = "#e898a8",
  git_change = "#f8b888",

  -- Diagnostic colors
  error = "#e898a8",
  warning = "#f8b888",
  info = "#78c8d8",
  hint = "#98d898",
}

-- Default to forest theme
M.colors = M.forest

-- Function to get colors for a specific theme
function M.get_palette(theme)
  return M[theme] or M.forest
end

-- Terminal colors (16 ANSI colors) - dynamically generated based on current colors
function M.get_terminal(colors)
  return {
    colors.bg,           -- black
    colors.berry,        -- red
    colors.green,        -- green
    colors.sunflower,    -- yellow
    colors.stream,       -- blue
    colors.purple,       -- magenta
    colors.mist,         -- cyan
    colors.fg,           -- white
    colors.comment,      -- bright black
    colors.berry,        -- bright red
    colors.green_bright, -- bright green
    colors.orange,       -- bright yellow
    colors.stream,       -- bright blue
    colors.orchid,       -- bright magenta
    colors.mist,         -- bright cyan
    colors.white,        -- bright white
  }
end

-- For backwards compatibility
M.terminal = M.get_terminal(M.colors)

return M
