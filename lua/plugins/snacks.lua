-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      -- scroll = {
      --   animate = {
      --     duration = {
      --       step = 5,
      --       total = 80,
      --     },
      --     easing = "linear",
      --   },
      --
      --   animate_repeat = {
      --     delay = 100,
      --     duration = {
      --       step = 3,
      --       total = 25,
      --     },
      --     easing = "linear",
      --   },
      -- },
      terminal = {
        win = {
          style = "float", -- ⭐ 浮动窗口
          border = "rounded",
          width = 0.9, -- 90% 屏幕
          height = 0.9, -- 85% 屏幕
        },
      },
    },
  },
}
