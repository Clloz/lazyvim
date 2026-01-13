return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- 显示 .env / .gitignore
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
            "dist",
            "build",
            ".next",
            ".turbo",
            ".pnpm",
            ".vite",
          },
        },
      },
    },
  },
}
