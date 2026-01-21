-- lua/plugins/oil.lua
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
  },
}
