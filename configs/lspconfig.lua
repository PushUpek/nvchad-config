local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

local lspconfig = require("lspconfig")
local servers = {
  "eslint",
  "vuels",
  "pyright",
  "rust_analyzer",
  "bashls",
  "dockerls",
  "gopls",
  "lua_ls",
  "clangd",
}


-- local on_attach = function(client, bufnr)
--   require("plugins.configs.lspconfig").on_attach(client, bufnr)

--   client.server_capabilities.documentFormattingProvider = true
--   client.server_capabilities.documentRangeFormattingProvider = true

--   if client.supports_method "textDocument/formatting" then
--     vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = augroup,
--       buffer = bufnr,
--       callback = function()
--         vim.lsp.buf.format { bufnr = bufnr }
--       end,
--     })
--   end
-- end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    python = {
      disableOrganizeImports = true,
      analysis = {
        autoSearchPaths = true,
        autoImportCompletions = false,
        typeCheckingMode = "off",
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
}
