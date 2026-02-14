# Neovim — Personal Setup

Personal Neovim configuration built on top of LazyVim, optimized for performance, simplicity, and uninterrupted development flow.

Primarily focused on Rust, TypeScript, and React/Next.js projects while keeping the environment lightweight, predictable, and fully keyboard‑driven.

---

## Principles

- Fast startup with aggressive lazy-loading
- IDE-level features without visual clutter
- Keyboard-first navigation and actions
- Native integration with Git, LSP, and global search
- Lean setup: only what improves real workflow

---

## Supported Stack

- Rust (rust-analyzer + cargo tooling)
- TypeScript / React / Next.js
- Lua (config and extensions)
- Generic LSP support for other languages

---

## Requirements

Before installing, make sure you have:

- Neovim ≥ 0.9
- Git
- Nerd Font configured in your terminal
- ripgrep
- fd
- lazygit
- gcc / build-essential

---

## Installation

Backup your current config:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone the repository:

```bash
git clone git@github.com:samuelmonteirotf/nvim.git ~/.config/nvim
```

First launch:

```bash
nvim
```

Plugins will be installed automatically via lazy.nvim.

---

## Main Keymaps

Leader: Space

Navigation:
- <leader>ff → Find files
- <leader>fg → Live grep
- <C-h/j/k/l> → Navigate splits
- <leader>, / <leader>. → Buffers
- <leader>bd → Close buffer

Harpoon:
- <leader>a → Mark file
- <C-e> → Harpoon menu

Git:
- <leader>gg → Lazygit

LSP:
- gd → Definition
- gr → References
- <leader>ca → Code actions

Terminal:
- <leader>' → Floating terminal

---

## Structure

```
lua/
 ├─ plugins/
 ├─ config/
 ├─ keymaps.lua
 ├─ options.lua
 └─ autocmds.lua
```

---

## License

MIT
