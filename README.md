# Neovim — Personal Setup

Configuração pessoal do Neovim construída sobre o LazyVim, otimizada para performance, simplicidade e fluxo contínuo de desenvolvimento.

Focada principalmente em projetos Rust, TypeScript e React/Next.js, mantendo um ambiente leve, previsível e totalmente orientado ao teclado.

---

## Princípios

- Inicialização rápida com lazy-loading agressivo
- Experiência de IDE sem poluição visual
- Navegação e ações críticas 100% via teclado
- Integração nativa com Git, LSP e busca global
- Setup enxuto: apenas o que acelera o fluxo

---

## Stack suportada

- Rust (rust-analyzer + tooling cargo)
- TypeScript / React / Next.js
- Lua (configuração e extensões)
- Suporte genérico para outras linguagens via LSP

---

## Requisitos

Antes da instalação, garanta que possui:

- Neovim ≥ 0.9
- Git
- Nerd Font configurada no terminal
- ripgrep
- fd
- lazygit
- gcc / build-essential

---

## Instalação

Backup da config atual:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone do repositório:

```bash
git clone git@github.com:samuelmonteirotf/nvim.git ~/.config/nvim
```

Primeira execução:

```bash
nvim
```

Os plugins serão instalados automaticamente via lazy.nvim.

---

## Keymaps principais

Leader: Espaço

Navegação:
- <leader>ff → Buscar arquivos
- <leader>fg → Buscar texto
- <C-h/j/k/l> → Navegar splits
- <leader>, / <leader>. → Buffers
- <leader>bd → Fechar buffer

Harpoon:
- <leader>a → Marcar arquivo
- <C-e> → Lista Harpoon

Git:
- <leader>gg → Lazygit

LSP:
- gd → Definição
- gr → Referências
- <leader>ca → Code actions

Terminal:
- <leader>' → Terminal flutuante

---

## Estrutura

```
lua/
 ├─ plugins/
 ├─ config/
 ├─ keymaps.lua
 ├─ options.lua
 └─ autocmds.lua
```

---

## Licença

MIT
