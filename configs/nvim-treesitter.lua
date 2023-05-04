local parser_confs = require("nvim-treesitter.parsers").get_parser_configs()

parser_confs.odin = {
  install_info = {
    url = "~/.config/tree-sitter-odin/",
    branch = "main",
    files = { "src/parser.c" },
  },
  filetype = "odin",
}
