M = {}

M.ui = {
  nvdash = { load_on_startup = true },
  theme_toggle = { "chadracula", "onenord_light" },
  theme = "chadracula",
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
