return {
  {
    "sindrets/diffview.nvim",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFileHistory",
    },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview open" },
      { "<leader>gD", "<cmd>DiffviewOpen --staged<cr>", desc = "Diff staged" },
      { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "File history" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Diffview close" },
    },
    opts = {},
  },
}
