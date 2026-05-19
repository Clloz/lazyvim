return {
  {
    "kawre/leetcode.nvim",
    lazy = true,
    cmd = "Leet",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      arg = "leetcode.nvim",
    },
    -- keys = {
    --   { "<leader>ll", "<cmd>Leet<cr>", desc = "LeetCode Menu" },
    --   { "<leader>lp", "<cmd>Leet problems<cr>", desc = "LeetCode Problems" },
    --   { "<leader>lt", "<cmd>Leet test<cr>", desc = "LeetCode Test" },
    --   { "<leader>ls", "<cmd>Leet submit<cr>", desc = "LeetCode Submit" },
    --   { "<leader>ld", "<cmd>Leet desc<cr>", desc = "LeetCode Description" },
    -- },
  },
}
