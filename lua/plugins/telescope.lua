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
  },
}
