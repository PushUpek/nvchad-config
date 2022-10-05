local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "css",
    "javascript",
    "json",
    "html",
    "lua",
    "python",
    "rust",
    "scss",
    "sql",
    "toml",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "luau-lsp",

    -- web dev stuff
    "eslint-lsp",
    "vue-language-server",

    -- python
    "pyright",

    -- rust
    "rust-analyzer",

    -- golang
    "gopls",

    -- other
    "bash-language-server",
    "dockerfile-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.nvterm = {
  terminals = {
    shell = "/opt/homebrew/bin/fish",
  },
}

return M
