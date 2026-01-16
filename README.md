# treescape.nvim

A calming nature-inspired Neovim colorscheme featuring forest greens, waterfall blues, and meadow pastels. Organic, earthy tones that evoke the feeling of being deep in an ancient woodland.

## Themes

Treescape includes three nature-inspired themes:

- **Forest** (default) - Deep greens, mossy tones, earthy browns. Inspired by ancient woodland and dappled sunlight.
- **Waterfall** - Blues, teals, misty grays. Inspired by cascading waterfalls, river stones, and morning mist.
- **Meadow** - Light, airy spring pastels. Inspired by flower-filled meadows, butterflies, and gentle breezes.

## Features

- Calming, nature-inspired color palettes
- Three distinct theme variants
- Full Treesitter support
- LSP semantic token highlighting
- Extensive plugin support for LazyVim and popular Neovim plugins
- Lualine theme included
- Transparent and semi-transparent background options

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "shawilly/treescape.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("treescape").setup(opts)
    vim.cmd.colorscheme("treescape")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "shawilly/treescape.nvim",
  config = function()
    require("treescape").setup()
    vim.cmd.colorscheme("treescape")
  end,
}
```

## Configuration

Default options:

```lua
require("treescape").setup({
  theme = "forest",       -- "forest", "waterfall", or "meadow"
  transparent = false,    -- false = solid, true = fully transparent, number (1-100) = semi-transparent
  terminal_colors = true, -- Set terminal colors
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
})
```

### Transparency

The `transparent` option supports three modes:

- `false` - Solid background (default)
- `true` - Fully transparent background (requires terminal transparency)
- `1-100` - Semi-transparent using blend (higher = more transparent, requires compatible terminal)

```lua
-- Examples
require("treescape").setup({ transparent = true })  -- fully transparent
require("treescape").setup({ transparent = 50 })    -- 50% blend
```

**Note:** Semi-transparency using blend requires a terminal that supports the feature (kitty, alacritty, wezterm, etc.).

## Switching Themes

You can switch themes in several ways:

### Via colorscheme command

```vim
:colorscheme treescape          " Uses configured theme (default: forest)
:colorscheme treescape-forest
:colorscheme treescape-waterfall
:colorscheme treescape-meadow
```

### Via Lua

```lua
require("treescape").load("waterfall")
-- or use convenience functions
require("treescape").forest()
require("treescape").waterfall()
require("treescape").meadow()
```

### Via setup configuration

```lua
require("treescape").setup({ theme = "waterfall" })
vim.cmd.colorscheme("treescape")
```

## Lualine

The theme includes a lualine theme. Configure it like this:

```lua
require("lualine").setup({
  options = {
    theme = "treescape",
  },
})
```

## Supported Plugins

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Which-key](https://github.com/folke/which-key.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [Dashboard](https://github.com/nvimdev/dashboard-nvim)
- [Alpha](https://github.com/goolord/alpha-nvim)
- [Trouble](https://github.com/folke/trouble.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [Aerial](https://github.com/stevearc/aerial.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [Snacks.nvim](https://github.com/folke/snacks.nvim)

## Color Palettes

### Forest (Default)

| Color         | Hex       | Usage                           |
| ------------- | --------- | ------------------------------- |
| Moss Green    | `#8fae7e` | Functions, strings              |
| Fern          | `#a4c493` | Highlights, bright accents      |
| Sage          | `#6b8e5f` | Muted greens                    |
| Bark          | `#c9a26d` | Constants, parameters           |
| Stream        | `#6b8a9a` | Types, info                     |
| Rust          | `#b35d4e` | Errors, exceptions              |
| Amber         | `#c9a04d` | Numbers, warnings, search       |
| Twilight      | `#8a7a9a` | Special, rare items             |

### Waterfall

| Color        | Hex       | Usage                           |
| ------------ | --------- | ------------------------------- |
| Bright Water | `#8ad4e2` | Functions, highlights           |
| Deep Water   | `#5eb5c4` | Keywords, statements            |
| Seafoam      | `#7aacba` | Strings                         |
| River Stone  | `#8a9aaa` | Constants, parameters           |
| Deep Pool    | `#4a9aba` | Types, info                     |
| Coral        | `#c87a9a` | Errors, exceptions              |
| Sand         | `#d4bc7a` | Numbers, warnings, search       |
| Shell        | `#9a8ac4` | Special, rare items             |

### Meadow

| Color        | Hex       | Usage                           |
| ------------ | --------- | ------------------------------- |
| Spring Green | `#a8e8a8` | Functions, highlights           |
| Fresh Grass  | `#88c888` | Keywords, statements            |
| Clover       | `#98d898` | Strings                         |
| Wildflower   | `#d8a878` | Constants, parameters           |
| Sky Blue     | `#78c8d8` | Types, info                     |
| Poppy        | `#e898a8` | Errors, exceptions              |
| Buttercup    | `#f8d878` | Numbers, warnings, search       |
| Lavender     | `#b8a8d8` | Special, rare items             |

## License

MIT
