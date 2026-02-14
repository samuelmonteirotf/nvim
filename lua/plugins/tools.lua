return {
  -- Harpoon para navegação rápida de arquivos
  {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      local map = vim.keymap.set
      -- Atalhos do Harpoon
      map("n", "<leader>a", function() harpoon:list():add() end, { desc = "[A]dicionar arquivo ao Harpoon" })
      map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Abrir menu do Harpoon" })

      -- Atalhos para navegar diretamente para os arquivos marcados
      map("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Harpoon para arquivo 1" })
      map("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Harpoon para arquivo 2" })
      map("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Harpoon para arquivo 3" })
      map("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Harpoon para arquivo 4" })
    end,
  },

  -- Lazygit para uma interface Git completa e interativa
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig" }, -- Carrega o plugin ao executar o comando
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      -- Mapeia um atalho para abrir a interface do Lazygit
      { "<leader>gg", "<cmd>LazyGit<CR>", desc = "Abrir LazyGit" },
    },
  },
}
