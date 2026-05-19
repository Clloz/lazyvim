-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")

      opts.defaults = opts.defaults or {}
      opts.defaults.mappings = opts.defaults.mappings or {}

      opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i or {}, {
        ["<C-d>"] = actions.delete_buffer,
      })

      opts.defaults.mappings.n = vim.tbl_extend("force", opts.defaults.mappings.n or {}, {
        ["<C-d>"] = actions.delete_buffer,
        ["dd"] = actions.delete_buffer,
      })
    end,
    keys = {
      -- 保留默认的 ff 和 fg 等...
      -- 新增一个搜索“所有文件”（含隐藏和忽略文件）的快捷键
      {
        "<leader>fa",
        function()
          require("telescope.builtin").find_files({
            hidden = true,
            no_ignore = true, -- 可选：是否穿透 .gitignore（如 node_modules）
          })
        end,
        desc = "Find all files (hidden+ignored)",
      },
    },
  },
}
