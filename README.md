# Configuração Neovim para Desenvolvimento Moderno (Rust & React)

Uma configuração Neovim pessoal, construída sobre o **LazyVim**, otimizada para performance, estética e produtividade máxima em desenvolvimento **Rust**, **React (Next.js)** e **TypeScript**.

<!-- Adicione um screenshot da sua configuração aqui -->
![image](https://user-images.githubusercontent.com/username/repo/assets/screenshot.png)

## ✨ Filosofia

- **Performance Extrema**: O lazy-loading é agressivamente utilizado para garantir um tempo de inicialização (boot time) consistentemente abaixo de 30ms.
- **Experiência de IDE Completa**: Fornece funcionalidades prontas para uso como LSP (diagnósticos, auto-complete), debugging, linting e formatação automática.
- **Foco em Rust & React**: Ambiente pré-configurado com as melhores ferramentas para `rust-analyzer` e `typescript-language-server`, garantindo uma experiência de desenvolvimento fluida.
- **Navegação na Velocidade da Luz**: Integração nativa com ferramentas como **Harpoon** e **Lazygit** para um fluxo de trabalho ágil e centrado no teclado.
- **Estética Agradável e Funcional**: Utiliza o tema **Catppuccin** e uma `lualine` customizada para uma interface limpa e informativa.

## 🚀 Pré-requisitos

Para utilizar esta configuração, você precisará ter o seguinte instalado:

- **[Neovim](https://github.com/neovim/neovim/releases/) v0.9.0+**
- **[Git](https://git-scm.com/)**
- Um **[Nerd Font](https://www.nerdfonts.com/)** instalado e configurado no seu terminal.
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** (para busca do Telescope)
- **[fd](https://github.com/sharkdp/fd)** (para busca de arquivos do Telescope)
- **[lazygit](https://github.com/jesseduffield/lazygit)** (para a integração com o plugin `lazygit.nvim`)
- Um **compilador C** (como `gcc`) para a compilação de `nvim-treesitter` e `telescope-fzf-native`.

## 📦 Instalação

1.  **Faça backup da sua configuração atual (se houver):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone este repositório:**
    ```bash
    git clone git@github.com:samuelmonteirotf/nvim.git ~/.config/nvim
    ```

3.  **Inicie o Neovim:**
    ```bash
    nvim
    ```
    O `lazy.nvim` irá inicializar e instalar todos os plugins automaticamente.

## ⌨️ Atalhos Principais

O prefixo `<leader>` está mapeado para a tecla `Espaço`.

| Atalho             | Ação                                       |
| ------------------ | ------------------------------------------ |
| **Navegação**      |                                            |
| `<leader>ff`       | Encontrar arquivos (Telescope)             |
| `<leader>fg`       | Encontrar texto no projeto (Telescope)     |
| `<C-h/j/k/l>`      | Navegar entre janelas (splits)             |
| `<leader>,` / `<leader>.` | Navegar entre buffers (anterior/próximo)   |
| `<leader>bd`       | Fechar buffer atual                        |
| **Harpoon**        |                                            |
| `<leader>a`        | Adicionar arquivo atual ao Harpoon         |
| `<C-e>`            | Abrir menu do Harpoon                      |
| `<C-h/t/n/s>`      | Pular para o arquivo 1, 2, 3 ou 4          |
| **Git**            |                                            |
| `<leader>gg`       | Abrir interface do Lazygit                 |
| **LSP**            |                                            |
| `gd`               | Ir para a definição                        |
| `gr`               | Encontrar referências                      |
| `<leader>ca`       | Listar "Code Actions" disponíveis          |
| **Outros**         |                                            |
| `<leader>'`        | Abrir/fechar terminal flutuante            |

---
_Feito com ❤️ e Lua_
