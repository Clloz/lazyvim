-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.vscode then
  vim.opt.number = true
  vim.opt.relativenumber = true
else
  vim.opt.number = true
  vim.opt.relativenumber = true
end
-- Set to false to disable auto format
-- vim.g.lazyvim_eslint_auto_format = true
