-- Grupo de autocmd para garantir que não haja conflitos
local augroup = vim.api.nvim_create_augroup("UserFormatOnSave", { clear = true })

-- Formatação automática ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*",
  callback = function(args)
    -- Evita formatação em tipos de arquivo onde não faz sentido
    local filetype = vim.bo[args.buf].filetype
    local excluded_filetypes = { "gitcommit", "markdown", "log" }
    if vim.tbl_contains(excluded_filetypes, filetype) then
      return
    end

    -- Formata o buffer usando o LSP, com um timeout para evitar travamentos
    vim.lsp.buf.format({ async = false, bufnr = args.buf, timeout_ms = 2000 })
  end,
  desc = "Formata o buffer ao salvar",
})
