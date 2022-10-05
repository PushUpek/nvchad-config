local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Python
  b.formatting.blue,
  b.formatting.isort,

  b.diagnostics.flake8,
  b.diagnostics.mypy,

  -- Lua
  b.formatting.stylua,

  -- Prettierd
  b.formatting.prettierd.with {
    extra_args = { "--print-with", "100" },
    filetypes = { "typescript", "typescriptreact", "vue", "javascript" },
  }
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method 'textDocument/formatting' then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end
  end,
}
