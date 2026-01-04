return {
  {
    "nvimtools/hydra.nvim",
    keys = {
      {
        "<leader>r",
        desc = "Resize mode",
      },
    },
    config = function()
      local Hydra = require("hydra")

      Hydra({
        name = "Resize Windows",
        mode = "n",
        body = "<leader>r",

        heads = {
          { "h", "<cmd>vertical resize -2<cr>", { desc = "resize left" } },
          { "l", "<cmd>vertical resize +2<cr>", { desc = "resize right" } },
          { "j", "<cmd>resize +2<cr>", { desc = "resize down" } },
          { "k", "<cmd>resize -2<cr>", { desc = "resize up" } },
          { "=", "<cmd>wincmd =<cr>", { desc = "equalize windows" } },
          { "q", nil, { exit = true, desc = "quit resize mode" } },
          { "<Esc>", nil, { exit = true } },
        },
      })
    end,
  },
}
