vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetype = { "lua" },
})

vim.lsp.config("jetls", {
  cmd = {
    "jetls",
    "serve",
  },
  filetypes = { "julia" },
  root_markers = { "Project.toml" },
})
vim.lsp.enable("jetls")

vim.lsp.enable("lua_ls")
