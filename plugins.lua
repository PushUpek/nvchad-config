local overrides = require("custom.configs.overrides")

return {
	{
		"github/copilot.vim",
		lazy = false,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		disable = true,
		config = function()
			require("custom.configs.lsp_lines")
		end,
	},
	{
		"NvChad/nvterm",
		disable = false,
		opts = overrides.nvterm,
	},
	{
		"arcticicestudio/nord-vim",
		disable = false,
	},
}
