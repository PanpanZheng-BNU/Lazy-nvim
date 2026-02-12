-- bootstrap lazy.nvim, LazyVim and your plugins

if vim.g.vscode then
  vim.cmd([[source ~/.config/nvim/vscode/setting.vim]])
  require("config.vscode-lazy")
else
  require("config.lazy")
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
      vim.opt_local.wrap = true
      vim.opt_local.linebreak = true
      vim.opt_local.textwidth = 80
    end,
  })
end
