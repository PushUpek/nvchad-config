M = {}

M.ui = {
	nvdash = { load_on_startup = true },
	theme_toggle = { "chadracula", "onenord_light" },
	theme = "chadracula",
}

M.lazy_nvim = {
	performance = {
		rtp = {
			disabled_plugins = vim.tbl_filter(function(name)
				return string.sub(name, 1, 5) ~= "netrw"
			end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
		},
	},
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
