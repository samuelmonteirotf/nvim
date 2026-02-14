return {
  -- O TEMA: Catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configura o tema no LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- LUALINE: Barra de status customizada
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "🦀 ⚛️" -- Ícones para Rust e React
        end,
        padding = { left = 1, right = 0 },
      })
    end,
  },
}
