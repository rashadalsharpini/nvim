# Neovim Configuration

A custom Neovim configuration written from scratch with a focus on competitive programming and general development.

## Features

### Core
- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management
- **Theme**: [gruvbox](https://github.com/ellisonleao/gruvbox.nvim) (light mode)
- **Statusline**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **Startup Screen**: [alpha-nvim](https://github.com/goolord/alpha-nvim) with custom ASCII art
- **File Explorer**: [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

### Editing
- **Syntax Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Auto-pairs**: [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- **Indentation**: [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- **Comments**: [vim-commentary](https://github.com/tpope/vim-commentary) (via gc)
- **File Browser**: [netrw.nvim](https://github.com/prichrd/netrw.nvim) enhanced with devicons
- **Git Signs**: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

### LSP & Autocomplete
- **LSP**: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) with:
  - `lua_ls` - Lua
  - `pylsp` - Python
  - `clangd` - C/C++
  - `rust_analyzer` - Rust
  - `omnisharp` - C#
- **Autocomplete**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) with LSP snippets
- **Snippets**: [LuaSnip](https://github.com/L3MON4D3/LuaSnip) with custom C++/Python snippets
- **LSP Installer**: [mason.nvim](https://github.com/williamboman/mason.nvim)

### Formatting
- **Formatter**: [conform.nvim](https://github.com/stevearc/conform.nvim)
- Formatters: stylua, black, prettier, rustfmt, clang-format, shfmt, jq

### Telescope (Fuzzy Finder)
- Find files (`<leader>ff`)
- Live grep (`<leader>fw`)
- Buffers (`<leader>fb`)
- Help tags (`<leader>fh`)

### Competitive Programming
- [competitest.nvim](https://github.com/xeluxee/competitest.nvim) for competitive programming
- Custom C++ template with debug support
- Custom Python template
- Keybindings (all prefixed with `r`):
  - `rc` - Receive contest
  - `rp` - Receive problem
  - `ra` - Add testcase
  - `re` - Edit testcase
  - `rr` - Run code
  - `rd` - Delete testcase

### UI Enhancements
- **Notifications**: [nvim-notify](https://github.com/rcarriga/nvim-notify)
- **Cmdline UI**: [noice.nvim](https://github.com/rcarriga/noice.nvim)
- **Diagnostics**: [trouble.nvim](https://github.com/folke/trouble.nvim)
- **Code Screenshots**: [nvim-silicon](https://github.com/michaelrommel/nvim-silicon) (`:Silicon`)

## Keybindings

### General
| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>pv` | Netrw file explorer |
| `<leader>e` | Toggle Neo-tree |
| `<Esc>` | Clear search highlight |
| `<C-c>` | Copy entire file |

### Window Navigation
| Key | Action |
|-----|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to below window |
| `<C-k>` | Move to above window |
| `<C-l>` | Move to right window |

### Insert Mode
| Key | Action |
|-----|--------|
| `<C-b>` | Move to beginning of line |
| `<C-e>` | Move to end of line |
| `<C-h>` | Move left |
| `<C-l>` | Move right |
| `<C-j>` | Move down |
| `<C-k>` | Move up |

### LSP
| Key | Action |
|-----|--------|
| `K` | Hover |
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `<leader>ca` | Code action |

### Formatting
| Key | Action |
|-----|--------|
| `<leader>f` | Format file |

### Comments
| Key | Action |
|-----|--------|
| `<leader>/` | Toggle comment (normal/visual) |


- Install dependencies:
   ```bash
   # Required tools
   sudo pacman -S silicon ripgrep xclip
   ```
