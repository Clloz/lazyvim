-- ~/.config/nvim/lua/plugins/colors.lua

return {
  {
    "brenoprata10/nvim-highlight-colors",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      render = "background",
      enable_named_colors = true,
      enable_tailwind = true,
    },
  },
}
