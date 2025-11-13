# 💤 LazyVim Config

Personal Neovim configuration based on the [LazyVim](https://github.com/LazyVim/LazyVim) starter template.
Refer to the [LazyVim documentation](https://lazyvim.github.io/installation) for general setup and usage.

## Features

### Enabled LazyVim Extras
- **AI**: Tabnine completion
- **Editor**: Code outline viewer
- **Formatting**: Prettier
- **Languages**: Java, Python, Scala, TypeScript, Vue, YAML
- **Utilities**: Project management

### Custom Plugins

#### Neo-tree Configuration
File explorer configured to show hidden files and dotfiles by default.

**Usage:**
- `<leader>e` - Toggle file explorer (usually `Space + e`)

#### Diffview
Git diff viewer with enhanced visualization and merge conflict resolution.

**Keybindings:**
- `<leader>gd` - Open DiffView (compare working tree with index)
- `<leader>gh` - Show file history for current file
- `<leader>gH` - Show full repository history
- `<leader>gc` - Close DiffView

**Navigation in DiffView:**
- `<tab>` / `<shift-tab>` - Navigate between changed files
- `-` - Stage/unstage current change
- `S` - Stage all changes
- `U` - Unstage all changes
- `X` - Restore entry (discard changes)
- `R` - Refresh files
- `gf` - Go to file in current window
- `<C-w><C-f>` - Go to file in split
- `<C-w>gf` - Go to file in new tab
- `i` - Toggle between list and tree view

**Common Commands:**
```vim
:DiffviewOpen           " Compare working tree vs index
:DiffviewOpen HEAD      " Compare working tree vs HEAD
:DiffviewOpen HEAD~2    " Compare with 2 commits ago
:DiffviewOpen main      " Compare with main branch
:DiffviewFileHistory %  " Current file history
:DiffviewFileHistory    " Full repository history
:DiffviewClose          " Close diffview
```

**Merge Conflicts:**
When you have merge conflicts, open DiffView to see a 3-way diff with conflict resolution tools.

## Installation

1. Ensure Neovim >= 0.9.0 is installed
2. Clone this config:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```
3. Launch Neovim:
   ```bash
   nvim
   ```
4. Lazy.nvim will automatically install all plugins

## Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Plugin manager setup
│   │   ├── options.lua        # Custom options
│   │   ├── keymaps.lua        # Custom keymaps
│   │   └── autocmds.lua       # Custom autocommands
│   └── plugins/
│       ├── neo-tree.lua       # File explorer config
│       ├── diffview.lua       # Git diff viewer config
│       └── example.lua        # Example plugin spec (disabled)
├── lazyvim.json               # LazyVim extras configuration
└── stylua.toml                # Lua formatter config
```

## Code Formatting

This config uses [stylua](https://github.com/JohnnyMorganz/StyLua) for Lua formatting:

```bash
# Check formatting
stylua --check lua/

# Format files
stylua lua/
```

**Stylua settings:** 2-space indentation, 120 column width

## Adding Custom Plugins

Create a new file in `lua/plugins/` (e.g., `lua/plugins/my-plugin.lua`):

```lua
return {
  "author/plugin-name",
  opts = {
    -- your configuration
  },
}
```

The file will be automatically loaded by lazy.nvim.

## Resources

- [LazyVim Documentation](https://lazyvim.github.io)
- [Lazy.nvim Plugin Manager](https://github.com/folke/lazy.nvim)
- [Diffview.nvim](https://github.com/sindrets/diffview.nvim)
