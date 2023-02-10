local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "eslint",
  "vuels",
  "pyright",
  "ruff_lsp",
  "rust_analyzer",
  "bashls",
  "dockerls",
  "gopls",
  "luau_lsp",
  "clangd",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

lspconfig.pyright.setup {
  on_attach = on_attach,
  root_dir = function()
    return vim.fn.getcwd()
  end,
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
        diagnosticMode = "workspace",
      },
    },
  },
}

lspconfig.ruff_lsp.setup {
  on_attach = on_attach,
  root_dir = function()
    return vim.fn.getcwd()
  end,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  init_options = {
    settings = {
      -- args = {},
      organizeImports = true,
      fixAll = false,
    },
  },
}
