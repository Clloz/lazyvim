-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- which-key group for line movement
require("which-key").add({
  { "<leader>j", group = "Move line" },
  { "<leader>k", group = "Move line" },
})
-- Move Lines
map("n", "<leader>jj", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<leader>kk", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
-- map("i", "jj", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- map("i", "kk", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<leader>jj", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<leader>kk", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- macro recording
vim.keymap.set("n", "q", "<Nop>", { desc = "Disable macro recording on q" })
vim.keymap.set("n", "Q", "q", { desc = "Record macro with Q" })

-- Copy filename and path:line to clipboard
local wk = require("which-key")

wk.add({
  { "<leader>y", group = "Yank path" },
})

local function copy(text, desc)
  vim.fn.setreg("+", text)
  vim.notify(desc)
end

vim.keymap.set("n", "<leader>yf", function()
  copy(vim.fn.expand("%:t"), "Copied filename")
end, {
  desc = "Filename",
})

vim.keymap.set("n", "<leader>yp", function()
  copy(vim.fn.expand("%"), "Copied relative path")
end, {
  desc = "Relative path",
})

vim.keymap.set("n", "<leader>yP", function()
  copy(vim.fn.expand("%:p"), "Copied absolute path")
end, {
  desc = "Absolute path",
})

vim.keymap.set("n", "<leader>yr", function()
  copy(("%s:%d"):format(vim.fn.expand("%"), vim.fn.line(".")), "Copied relative path:line")
end, {
  desc = "Relative path:line",
})

vim.keymap.set("n", "<leader>yR", function()
  copy(("%s:%d"):format(vim.fn.expand("%:p"), vim.fn.line(".")), "Copied absolute path:line")
end, {
  desc = "Absolute path:line",
})
