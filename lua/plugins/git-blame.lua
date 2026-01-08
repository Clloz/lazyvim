return {
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy", -- 不影响启动
    opts = {
      enabled = false, -- ⭐ 关键：默认关闭
      message_template = " <author> • <date> • <summary>",
      date_format = "%Y-%m-%d",
      virtual_text_column = 1, -- 靠左显示
    },
    keys = {
      { "<leader>gm", "<cmd>GitBlameToggle<cr>", desc = "Toggle Git Blame" },
    },
  },
}
