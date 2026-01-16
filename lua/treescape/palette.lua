-- Treescape colorscheme palette
-- A calming nature-inspired Neovim colorscheme
-- Featuring forest greens, waterfall blues, and meadow pastels

local M = {}

-- Forest theme - Deep greens, mossy tones, earthy browns (default)
-- Inspired by ancient woodland, moss-covered stones, and dappled sunlight
M.forest = {
	-- Base backgrounds (Warm slate grey)
	bg = "#132a13",
	bg_dark = "#081c15",
	bg_highlight = "#2f3e46",
	bg_visual = "#3a0ca3",

	-- Foregrounds (Soft cream)
	fg = "#e4e3e1",
	fg_dark = "#c8c5c1",
	fg_gutter = "#5c5e5e",

	-- Primary greens (Various foliage)
	green = "#a9dc76",
	green_bright = "#9ed072",
	green_dim = "#6a9f5a",
	green_dark = "#4a6a4a",

	-- Earth tones (Bark, soil, fallen leaves)
	bark = "#e69875",
	bark_dark = "#b87a5a",
	moss = "#9ed072",
	soil = "#6b5344",
	soil_dark = "#4a3a2e",

	-- Accent colors (Wildflowers and berries)
	berry = "#f85e84",
	berry_dark = "#c44d68",
	sunflower = "#e7c664",
	orange = "#f99157",

	-- Water tones (Stream running through forest)
	stream = "#78dce8",
	stream_dark = "#5ab4c4",
	mist = "#7ad5d6",

	-- Special (Rare forest finds)
	purple = "#ab9df2",
	orchid = "#e5a5e5",
	white = "#f8f8f2",
	black = "#131415",

	-- UI specific
	border = "#5c5e5e",
	comment = "#7a7d7d",
	selection = "#414548",
	cursorline = "#323435",
	pmenu = "#2e3032",
	pmenu_sel = "#414548",

	-- Diff colors
	diff_add = "#2d3a2d",
	diff_delete = "#3d2832",
	diff_change = "#2e3a3a",
	diff_text = "#3a5a4a",

	-- Git colors
	git_add = "#a9dc76",
	git_delete = "#f85e84",
	git_change = "#f99157",

	-- Diagnostic colors
	error = "#f85e84",
	warning = "#f99157",
	info = "#78dce8",
	hint = "#9ed072",
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
