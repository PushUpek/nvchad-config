local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["<leader>ff"] = "",
  },
}

M.custom1 = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.custom2 = {
  n = {
    ["d["] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "goto prev problem" },
    ["d]"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "goto next problem" },
    ["gl"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic open float" },
    ["gs"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "show signature help" },
  },
}

M.custom3 = {
  n = {
    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "toggle telescope find files" },
    ["<leader>b"] = { "<cmd> Telescope buffers <CR>", "toggle telescope buffers" },
    ["<leader>s"] = { "<cmd> Telescope live_grep <CR>", "toggle telescope live grep" },
    ["<leader>o"] = { "<cmd> Telescope lsp_document_symbols <CR>", "toggle telescope lsp_document_symbols" },
    ["<leader>d"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "toggle telescope diagnostics" },
  },
}

M.custom4 = {
  -- terminal mode
  t = {
    -- ["<leader>t"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },

    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  -- normal mode
  n = {
    -- ["<leader>t"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },

    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },
}

return M
