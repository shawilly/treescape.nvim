-- Treescape colorscheme palette
-- A calming nature-inspired Neovim colorscheme
-- Featuring forest greens, waterfall blues, and meadow pastels

local M = {}

-- Forest theme - Deep greens, mossy tones, earthy browns (default)
-- Inspired by ancient woodland, moss-covered stones, and dappled sunlight
M.forest = {
	-- Base backgrounds (Deep forest floor)
	bg = "#0d1409",
	bg_dark = "#090f08",
	bg_highlight = "#182216",
	bg_visual = "#222e21",

	-- Foregrounds (Pale lichen, weathered wood)
	fg = "#ddd6c0",
	fg_dark = "#c0b8a4",
	fg_gutter = "#5a6258",

	-- Primary greens (Moss, fern, sage - natural tones)
	green = "#8fae7e",
	green_bright = "#a4c493",
	green_dim = "#6b8e5f",
	green_dark = "#4a6644",

	-- Earth tones (Bark, soil, fallen leaves)
	bark = "#c9a26d",
	bark_dark = "#a67c52",
	moss = "#7da87b",
	soil = "#6b5344",
	soil_dark = "#4a3a2e",

	-- Accent colors (Autumn leaves, wildberries)
	berry = "#9f5d46",
	berry_dark = "#7f4a39",
	sunflower = "#b8944c",
	orange = "#aa6f4e",

	-- Water tones (Forest stream, morning mist)
	stream = "#6b8a9a",
	stream_dark = "#5a7585",
	mist = "#8aa89a",

	-- Syntax accents
	leaf = "#b8c99b",
	wood = "#b89462",
	dew = "#8fbcc4",
	rosehip = "#c57967",

	-- Special (Twilight shadows, wild orchids)
	purple = "#7c736f",
	orchid = "#95867d",
	white = "#ede4cc",
	black = "#090e09",

	-- UI specific
	border = "#2e3b2c",
	comment = "#6a7268",
	selection = "#222e21",
	cursorline = "#111a10",
	pmenu = "#0f1710",
	pmenu_sel = "#222e21",
	bg_oak = "#2d281f",

	-- Diff colors
	diff_add = "#1d281c",
	diff_delete = "#2a1d1a",
	diff_change = "#1c2527",
	diff_text = "#263126",
	diag_warn_bg = "#272115",
	diag_info_bg = "#192429",
	diag_hint_bg = "#182519",

	-- Git colors
	git_add = "#8fae7e",
	git_delete = "#b35d4e",
	git_change = "#c9a04d",

	-- Diagnostic colors
	error = "#9f5d46",
	warning = "#aa6f4e",
	info = "#6b8a9a",
	hint = "#8fae7e",
}

-- Waterfall theme - Blues, teals, misty grays
-- Inspired by cascading waterfalls, river stones, and morning mist
M.waterfall = {
	-- Base backgrounds (Warm slate grey)
	bg = "#20242c",
	bg_dark = "#191d24",
	bg_highlight = "#2a303a",
	bg_visual = "#343c4a",

	-- Foregrounds (Cool white)
	fg = "#ddd8c8",
	fg_dark = "#b8b4a4",
	fg_gutter = "#545862",

	-- Primary blues (Water in various states)
	green = "#61afef",
	green_bright = "#8ad4e2",
	green_dim = "#4a8a98",
	green_dark = "#3a6a78",

	-- Stone tones (River rocks, wet slate)
	bark = "#d19a66",
	bark_dark = "#b87a5a",
	moss = "#7ec699",
	soil = "#5a6a78",
	soil_dark = "#4a5a66",

	-- Accent colors (Reflected sky, sunset on water)
	berry = "#b4705f",
	berry_dark = "#92584a",
	sunflower = "#c7aa74",
	orange = "#bb8963",

	-- Deep water tones
	stream = "#56b6c2",
	stream_dark = "#3a9aaa",
	mist = "#8ad4e2",

	-- Syntax accents
	leaf = "#a7d7de",
	wood = "#d7a774",
	dew = "#88c8d8",
	rosehip = "#e28b93",

	-- Special (Rare stones, shells)
	purple = "#8e8396",
	orchid = "#aea0b3",
	white = "#ede4cc",
	black = "#0e1014",

	-- UI specific
	border = "#464c5a",
	comment = "#6b727d",
	selection = "#343c4a",
	cursorline = "#1e2430",
	pmenu = "#1c2028",
	pmenu_sel = "#343c4a",
	bg_oak = "#403830",

	-- Diff colors
	diff_add = "#2d3a2d",
	diff_delete = "#3d2832",
	diff_change = "#2e3a44",
	diff_text = "#3a5868",
	diag_warn_bg = "#3a3225",
	diag_info_bg = "#233842",
	diag_hint_bg = "#24352f",

	-- Git colors
	git_add = "#7ec699",
	git_delete = "#e06c75",
	git_change = "#d19a66",

	-- Diagnostic colors
	error = "#b4705f",
	warning = "#bb8963",
	info = "#56b6c2",
	hint = "#7ec699",
}

-- Meadow theme - Light, airy spring pastels
-- Inspired by flower-filled meadows, butterflies, and gentle breezes
M.meadow = {
	-- Base backgrounds (Warm grey with hint of green)
	bg = "#222622",
	bg_dark = "#1c1f1c",
	bg_highlight = "#2d322d",
	bg_visual = "#383d38",

	-- Foregrounds (Bright spring day)
	fg = "#ddd8c2",
	fg_dark = "#c0bca8",
	fg_gutter = "#5a5e5a",

	-- Primary greens (Fresh spring growth)
	green = "#a7c080",
	green_bright = "#b8d898",
	green_dim = "#7a9a6a",
	green_dark = "#5a7a4a",

	-- Warm pastels (Wildflowers)
	bark = "#e69875",
	bark_dark = "#c87858",
	moss = "#a7c080",
	soil = "#8a7868",
	soil_dark = "#6a5848",

	-- Flower colors (Poppies, lavender, buttercups)
	berry = "#bb7b67",
	berry_dark = "#9a6252",
	sunflower = "#c8b076",
	orange = "#cb8f6f",

	-- Sky tones (Clear spring sky)
	stream = "#7fbbb3",
	stream_dark = "#5a9a92",
	mist = "#9ad8d0",

	-- Syntax accents
	leaf = "#c9e0a5",
	wood = "#ebb07b",
	dew = "#8ecfc8",
	rosehip = "#ee9ea6",

	-- Special (Butterflies, rare blooms)
	purple = "#9b8a8d",
	orchid = "#b7a1a3",
	white = "#ede4cc",
	black = "#111311",

	-- UI specific
	border = "#4a4e4a",
	comment = "#7a8078",
	selection = "#383d38",
	cursorline = "#1e221e",
	pmenu = "#1f231f",
	pmenu_sel = "#383d38",
	bg_oak = "#403830",

	-- Diff colors
	diff_add = "#2d3a2d",
	diff_delete = "#3d2832",
	diff_change = "#353a35",
	diff_text = "#4a5a4a",
	diag_warn_bg = "#3b3224",
	diag_info_bg = "#253734",
	diag_hint_bg = "#273527",

	-- Git colors
	git_add = "#a7c080",
	git_delete = "#e67e80",
	git_change = "#e69875",

	-- Diagnostic colors
	error = "#bb7b67",
	warning = "#cb8f6f",
	info = "#7fbbb3",
	hint = "#a7c080",
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
		colors.bg, -- black
		colors.berry, -- red
		colors.green, -- green
		colors.sunflower, -- yellow
		colors.stream, -- blue
		colors.purple, -- magenta
		colors.mist, -- cyan
		colors.fg, -- white
		colors.comment, -- bright black
		colors.berry, -- bright red
		colors.green_bright, -- bright green
		colors.orange, -- bright yellow
		colors.stream, -- bright blue
		colors.orchid, -- bright magenta
		colors.mist, -- bright cyan
		colors.white, -- bright white
	}
end

-- For backwards compatibility
M.terminal = M.get_terminal(M.colors)

return M
