local M = {}

local meadow = {
  title = "Treescape Demo",
  active = true,
  variants = { "forest", "waterfall", "meadow" },
  accent = "#8fae7e",
}

---@param theme "forest"|"waterfall"|"meadow"
function M.preview(theme)
  local greeting = ("theme: %s"):format(theme or "forest")
  local icons = { branch = "git", leaf = "fn", water = "type" }

  if meadow.active and theme ~= "meadow" then
    print("Switching preview from meadow to " .. greeting)
  end

  for index, variant in ipairs(meadow.variants) do
    local marker = variant == theme and "->" or "  "
    print(("%s %d. %s"):format(marker, index, variant))
  end

  return {
    greeting = greeting,
    ok = true,
    count = #meadow.variants,
    icons = icons,
  }
end

function M.search(query)
  local pattern = query or "palette"
  local notes = {
    "soft contrast",
    "lush comments",
    "calm diagnostics",
  }

  return vim.tbl_filter(function(item)
    return item:find(pattern) ~= nil
  end, notes)
end

return M
