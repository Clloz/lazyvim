return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<leader>gg",
        function()
          Snacks.terminal("lazygit", {
            cwd = LazyVim.root(),
            win = {
              style = "float",
              border = "rounded",
              width = 0,
              height = 0,
            },
          })
        end,
        desc = "Lazygit",
      },
    },
  },
}
