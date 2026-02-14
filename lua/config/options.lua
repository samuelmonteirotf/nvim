-- Aqui sobrescrevemos os padrões do LazyVim para deixar mais a sua cara
local opt = vim.opt

-- 1. Indentação (2 espaços é o padrão ouro para React/Next.js/TS)
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true

-- 2. Navegação Ninja
-- Números de linha relativos: Isso é ESSENCIAL para você usar os atalhos de pulo (ex: 10j, 5k)
opt.relativenumber = true

-- Mantém o cursor mais centralizado na tela quando você rola o código para baixo/cima
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 3. Visual e Leitura
-- Desativa a quebra de linha visual (textos longos não vão para a linha de baixo sozinhos)
opt.wrap = false

-- Mostra uma linha invisível no limite de 80 caracteres (bom para manter o código limpo, muito usado em Rust)
opt.colorcolumn = "80"

-- 4. Performance
-- Diminui o tempo de atualização do editor (deixa a interface mais responsiva)
opt.updatetime = 50
