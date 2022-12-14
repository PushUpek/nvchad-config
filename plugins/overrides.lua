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
    "lua-language-server",

    -- web dev stuff
    "eslint-lsp",
    "vue-language-server",

    -- python
    "pyright",

    -- rust
    "rust-analyzer",

    -- golang
    "gopls",

    -- c/c++
    "clangd",

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

  filters = {
    dotfiles = false,
    custom = { "^.git$", "**/.null-ls_*" },
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
