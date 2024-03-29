local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Python
  b.formatting.ruff.with {
    args = { "--select", "I001", "--fix", "-e", "-n", "--stdin-filename", "$FILENAME", "-" }
  },
  b.formatting.blue,

  b.diagnostics.mypy,
  b.diagnostics.ruff,

  -- Lua
  b.formatting.stylua,

  -- Prettierd
  b.formatting.prettierd.with {
    extra_args = { "--print-with", "100" },
    filetypes = { "typescript", "typescriptreact", "vue", "javascript" },
  },
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { 
            bufnr = bufnr 
          }
        end,
      })
    end
  end,
}
