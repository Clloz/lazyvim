-- lua/plugins/oil.lua
local function copy(value)
  vim.fn.setreg("+", value)
  vim.notify("Copied: " .. value)
end

return {
  "stevearc/oil.nvim",
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory (Oil)" },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["yf"] = function()
        local oil = require("oil")
        local entry = oil.get_cursor_entry()
        if entry then
          copy(entry.name)
        end
      end,
      ["yp"] = function()
        local oil = require("oil")
        local entry = oil.get_cursor_entry()
        if entry then
          local path = vim.fs.joinpath(oil.get_current_dir(), entry.name)
          copy(path)
        end
      end,
      ["yP"] = function()
        local oil = require("oil")
        local entry = oil.get_cursor_entry()
        if entry then
          local path = vim.fs.baspath(vim.fs.joinpath(oil.get_current_dir(), entry.name))
          copy(path)
        end
      end,
    },
  },
}
