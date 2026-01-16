-- Treescape colorscheme palette
-- A calming nature-inspired Neovim colorscheme
-- Featuring forest greens, waterfall blues, and meadow pastels

local M = {}

-- Forest theme - Deep greens, mossy tones, earthy browns (default)
-- Inspired by ancient woodland, moss-covered stones, and dappled sunlight
M.forest = {
	-- Base backgrounds (Deep forest floor)
	bg = "#1a2618",
	bg_dark = "#131c12",
	bg_highlight = "#2a3628",
	bg_visual = "#3a4a38",

	-- Foregrounds (Pale lichen, weathered wood)
	fg = "#d4cfc4",
	fg_dark = "#b8b3a8",
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
	berry = "#b35d4e",
	berry_dark = "#8c4a3e",
	sunflower = "#c9a04d",
	orange = "#c07050",

	-- Water tones (Forest stream, morning mist)
	stream = "#6b8a9a",
	stream_dark = "#5a7585",
	mist = "#8aa89a",

	-- Special (Twilight shadows, wild orchids)
	purple = "#8a7a9a",
	orchid = "#a890a8",
	white = "#e8e4dc",
	black = "#131815",

	-- UI specific
	border = "#4a5648",
	comment = "#6a7268",
	selection = "#3a4838",
	cursorline = "#252e22",
	pmenu = "#232a20",
	pmenu_sel = "#3a4838",

	-- Diff colors
	diff_add = "#2a3a28",
	diff_delete = "#3a2828",
	diff_change = "#2a3232",
	diff_text = "#3a4a3a",

	-- Git colors
	git_add = "#8fae7e",
	git_delete = "#b35d4e",
	git_change = "#c9a04d",

	-- Diagnostic colors
	error = "#b35d4e",
	warning = "#c07050",
	info = "#6b8a9a",
	hint = "#8fae7e",
}

-- Waterfall theme - Blues, teals, misty grays
-- Inspired by cascading waterfalls, river stones, and morning mist
M.waterfall = {
	-- Base backgrounds (Warm slate grey)
	bg = "#282c34",
	bg_dark = "#21252b",
	bg_highlight = "#323842",
	bg_visual = "#3e4452",

	-- Foregrounds (Cool white)
	fg = "#e0e4eb",
	fg_dark = "#b8bcc4",
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
	berry = "#e06c75",
	berry_dark = "#be5046",
	sunflower = "#e5c07b",
	orange = "#d19a66",

	-- Deep water tones
	stream = "#56b6c2",
	stream_dark = "#3a9aaa",
	mist = "#8ad4e2",

	-- Special (Rare stones, shells)
	purple = "#c678dd",
	orchid = "#d4a5d4",
	white = "#f0f4f8",
	black = "#121418",

	-- UI specific
	border = "#545862",
	comment = "#6b727d",
	selection = "#3e4452",
	cursorline = "#2c323c",
	pmenu = "#2a2e36",
	pmenu_sel = "#3e4452",

	-- Diff colors
	diff_add = "#2d3a2d",
	diff_delete = "#3d2832",
	diff_change = "#2e3a44",
	diff_text = "#3a5868",

	-- Git colors
	git_add = "#7ec699",
	git_delete = "#e06c75",
	git_change = "#d19a66",

	-- Diagnostic colors
	error = "#e06c75",
	warning = "#d19a66",
	info = "#56b6c2",
	hint = "#7ec699",
}

-- Meadow theme - Light, airy spring pastels
-- Inspired by flower-filled meadows, butterflies, and gentle breezes
M.meadow = {
	-- Base backgrounds (Warm grey with hint of green)
	bg = "#2a2e2a",
	bg_dark = "#232623",
	bg_highlight = "#353a35",
	bg_visual = "#404540",

	-- Foregrounds (Bright spring day)
	fg = "#e8ebe4",
	fg_dark = "#c8ccc4",
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
	berry = "#e67e80",
	berry_dark = "#c86468",
	sunflower = "#dbbc7f",
	orange = "#e69875",

	-- Sky tones (Clear spring sky)
	stream = "#7fbbb3",
	stream_dark = "#5a9a92",
	mist = "#9ad8d0",

	-- Special (Butterflies, rare blooms)
	purple = "#d699b6",
	orchid = "#e0a8c8",
	white = "#f4f8f0",
	black = "#181a18",

	-- UI specific
	border = "#5a5e5a",
	comment = "#7a8078",
	selection = "#404540",
	cursorline = "#313531",
	pmenu = "#2d302d",
	pmenu_sel = "#404540",

	-- Diff colors
	diff_add = "#2d3a2d",
	diff_delete = "#3d2832",
	diff_change = "#353a35",
	diff_text = "#4a5a4a",

	-- Git colors
	git_add = "#a7c080",
	git_delete = "#e67e80",
	git_change = "#e69875",

	-- Diagnostic colors
	error = "#e67e80",
	warning = "#e69875",
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
