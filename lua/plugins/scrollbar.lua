return {
  {
    "petertriho/nvim-scrollbar",
    branch = "refactor/v2",
    dependencies = {
      "lewis6991/gitsigns.nvim",
    },
    opts = {
      providers = {
        gitsigns = true,
      },
      exclude = {
        buftypes = {
          quickfix = true,
        },
        filetypes = {
          ["neo-tree"] = true,
          markdown = { scrollbar = false },
          Trouble = true,
          mason = true,
          notice = false,
        },
      },
      scrollbar = {
        preset = "intellij",
        visibility = "active",
        window = { border = "rounded" },
      },
      minimap = {
        enabled = false,
        preset = "zed",
        visibility = "active",
        -- window = { border = "rounded", title = "map", wo = { cursorline = true } },
      },
    },
  },
}
