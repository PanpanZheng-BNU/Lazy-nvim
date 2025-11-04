-- bootstrap lazy.nvim, LazyVim and your plugins

if vim.g.vscode then
  vim.cmd([[source ~/.config/nvim/vscode/setting.vim]])
  require("config.vscode-lazy")
else
  require("config.lazy")
end
