local map = vim.keymap.set

-- Navegação rápida entre janelas (splits)
map("n", "<C-h>", "<C-w>h", { desc = "Mover para a janela da esquerda" })
map("n", "<C-j>", "<C-w>j", { desc = "Mover para a janela de baixo" })
map("n", "<C-k>", "<C-w>k", { desc = "Mover para a janela de cima" })
map("n", "<C-l>", "<C-w>l", { desc = "Mover para a janela da direita" })

-- Gerenciamento de buffers
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Fechar buffer atual" })
map("n", "<leader>,", "<cmd>bprevious<CR>", { desc = "Buffer anterior" })
map("n", "<leader>.", "<cmd>bnext<CR>", { desc = "Próximo buffer" })
