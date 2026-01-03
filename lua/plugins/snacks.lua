-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          style = "float", -- ⭐ 浮动窗口
          border = "rounded",
          width = 0.9, -- 90% 屏幕
          height = 0.85, -- 85% 屏幕
        },
      },
    },
  },
}
