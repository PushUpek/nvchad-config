local overrides = require "custom.plugins.overrides"

return {
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "plugins.configs.alpha"
      require "custom.plugins.alpha"
    end,
  },

  ["https://git.sr.ht/~whynothugo/lsp_lines.nvim"] = {
    disable = true,
    config = function()
      require "custom.plugins.lsp_lines"
    end,
  },

  ["NvChad/nvterm"] = {
    disable = false,
    override_options = overrides.nvterm,
  },

  ["arcticicestudio/nord-vim"] = {
    disable = false
  },
}
