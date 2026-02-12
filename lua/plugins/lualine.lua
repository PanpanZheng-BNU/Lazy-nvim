return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = { lualine_c = { "os.date('%a')", "data", "require'lsp-status'.status()" } },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
