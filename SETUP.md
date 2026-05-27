# Neovim Setup Dependencies

## Already installed (no action needed)

| Tool | How installed | Used by |
|------|--------------|---------|
| `git` | Homebrew | gitsigns.nvim |
| `ripgrep` (`rg`) | Homebrew | Telescope live_grep |
| `fzf` | Homebrew | Telescope fuzzy find |
| `make`, `clang`, `cc` | Xcode Command Line Tools | telescope-fzf-native build, LuaSnip regex |
| `tree-sitter` CLI | `brew install tree-sitter-cli` | nvim-treesitter (parser compilation) |
| `lua-language-server` | Mason (auto-installed) | Lua LSP |
| `stylua` | Mason (auto-installed) | Lua formatter (conform.nvim) |

> **Note:** `lua-language-server` and `stylua` are managed by Mason and installed
> automatically on first launch. Do not install them manually via Homebrew.

---

## Missing — install when needed

### `fd` — faster file finding for Telescope
```bash
brew install fd
```
Optional but recommended. Telescope falls back to `find` without it, which is slower.

### `clang-format` — C/C++/ObjC formatter
```bash
brew install clang-format
```
Only needed if you edit C, C++, or Objective-C files. The `vim-clang-format` plugin
auto-formats on save and is already configured (`<leader>cf` to format manually).

### Nerd Font — icons in nvim-tree and status line
Install any [Nerd Font](https://www.nerdfonts.com/) and set it as your terminal font.
Recommended: `JetBrainsMono Nerd Font` or `MesloLGS NF`.
```bash
brew install --cask font-jetbrains-mono-nerd-font
```
Without a Nerd Font, nvim-tree and nvim-web-devicons show placeholder characters
instead of file-type icons.

---

## Mason-managed tools (LSP servers, linters, formatters)

These are installed inside Neovim via `:Mason`. You do **not** need Homebrew for them.

| Tool | Type | Trigger |
|------|------|---------|
| `lua-language-server` | LSP | Auto-installed on first launch |
| `stylua` | Formatter | Auto-installed on first launch |

To add more language servers (e.g. `pyright` for Python, `ts_ls` for TypeScript),
open Neovim and run `:Mason`, then search and install from the UI.
Or add them to the `ensure_installed` list in the Mason section of `init.lua`.

---

## Re-creating this setup on a new machine

```bash
# 1. Xcode Command Line Tools (compiler + make)
xcode-select --install

# 2. Homebrew packages
brew install git ripgrep fzf fd clang-format tree-sitter-cli
brew install --cask font-jetbrains-mono-nerd-font   # optional

# 3. Clone config
git clone <your-dotfiles-repo> ~/.config/nvim

# 4. Launch Neovim — lazy.nvim auto-installs all plugins,
#    Mason auto-installs lua-language-server and stylua,
#    nvim-treesitter downloads parsers in the background.
nvim
```
