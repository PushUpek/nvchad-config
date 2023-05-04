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
    "odin",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
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

    -- odin
    "ols",

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
  -- Enable Netrw to make the 'gx' shortcut work
  disable_netrw = false,
  hijack_netrw = false,

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
    type_opts = {
      float = {
        relative = "editor",
        row = 0.15,
        col = 0.10,
        width = 0.8,
        height = 0.7,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.3 },
      vertical = { location = "rightbelow", split_ratio = 0.5 },
    },
  },
}

return M
