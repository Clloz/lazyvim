return {
  {
    "uga-rosa/ccc.nvim",
    cmd = { "CccPick", "CccConvert" },
    opts = {
      highlighter = {
        auto_enable = false,
      },
    },
    keys = {
      { "<leader>cp", "<cmd>CccPick<cr>", desc = "Color Picker" },
    },
  },
}
