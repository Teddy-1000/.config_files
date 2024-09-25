-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Python plugins
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
vim.g.python3_host_prog = "/usr/bin/python3"
-- vim.g.editorconfig.max_line_length = 120

return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = { "isort", "black" },
    },
    formatters = {
      python = { prepent_args = { "line_length", "120" } },
    },
  },
}
