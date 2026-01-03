return {
  {
    "nvimtools/hydra.nvim",

    -- 关键：只有在用到时才加载
    keys = {
      "<leader>r",
      desc = "Resize mode",
    },

    config = function()
      local Hydra = require("hydra")

      Hydra({
        name = "Resize Windows",
        mode = "n",
        body = "<leader>r",

        heads = {
          -- 左右
          { "h", "<cmd>vertical resize -2<cr>", { desc = "resize left" } },
          { "l", "<cmd>vertical resize +2<cr>", { desc = "resize right" } },

          -- 上下
          { "j", "<cmd>resize +2<cr>", { desc = "resize down" } },
          { "k", "<cmd>resize -2<cr>", { desc = "resize up" } },

          -- 重置
          { "=", "<cmd>wincmd =<cr>", { desc = "equalize windows" } },

          -- 退出
          { "q", nil, { exit = true, desc = "quit resize mode" } },
          { "<Esc>", nil, { exit = true } },
        },
      })
    end,
  },
}
