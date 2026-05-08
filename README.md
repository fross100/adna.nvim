# adna.nvim

A dark, vibrant Neovim colorscheme derived from the [Adna theme](https://github.com/fross100/omarchy-adna-theme), featuring cool teal accents, bright pink foreground, and a deep charcoal background optimized for long coding sessions.

## Features

- Full Tree-sitter syntax highlighting support
- Native LSP diagnostic highlights
- 16-color terminal palette mapped to theme colors
- Compatible with Neovim 0.8+ (requires Lua API support)
- Preconfigured highlights for popular plugins:
  - NvimTree
  - Telescope
  - LSP Signatures
  - Git Signs
- Automatic dark mode detection (sets `background = "dark"`)

## Installation

### lazy.nvim
Add the following to your Neovim plugin configuration (e.g., `~/.config/nvim/lua/plugins/adna.lua`):
```lua
{
  "fross100/adna.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme adna")
  end,
}
```

### packer.nvim
```lua
use({
  "fross100/adna.nvim",
  config = function()
    vim.cmd("colorscheme adna")
  end,
})
```

### vim-plug
Add to your `~/.config/nvim/init.vim` or `~/.vimrc`:
```vim
Plug 'fross100/adna.nvim'
```
Then apply the colorscheme after plugin load:
```vim
colorscheme adna
```

## Usage

Enable the colorscheme in your Neovim configuration:
```lua
-- In your init.lua or plugin config
vim.cmd("colorscheme adna")
```

Or toggle it live in Neovim:
```vim
:colorscheme adna
```

## License

MIT License (see [LICENSE](LICENSE) for details)

## Credits

- Original Adna theme by [fross100](https://github.com/fross100)
- Built using the [Build Your Own Neovim Colorscheme in Lua](https://medium.com/@ronxvier/build-your-own-neovim-colorscheme-in-lua-3b01adf019e0) guide
- Inspired by the minimal [ymir.nvim](https://github.com/ronxvier/ymir.nvim) colorscheme