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
vim.opt.smoothscroll = true
-- vim.opt.scrolloff = 8
-- Set to false to disable auto format
-- vim.g.lazyvim_eslint_auto_format = true

-- SSH_TTY config
local is_ssh = vim.env.SSH_TTY ~= nil or vim.env.SSH_CONNECTION ~= nil

if is_ssh then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }

  vim.opt.clipboard = "unnamedplus"
end
