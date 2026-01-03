return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_enabled = false
      -- Disable default <Tab> mapping (we’ll set our own)
      -- vim.g.copilot_no_tab_map = true

      -- Accept suggestion with Ctrl-l (macOS-friendly)
      -- vim.keymap.set("i", "<C-p>", 'copilot#Accept("<CR>")', {
      --   expr = true,
      --   silent = true,
      --   desc = "Copilot accept",
      --   replace_keycodes = true,
      -- })

      -- Optional but useful
      vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", { desc = "Copilot dismiss" })
      vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)", { desc = "Copilot next" })
      vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)", { desc = "Copilot previous" })

      -- Optional: disable Copilot in some filetypes
      vim.g.copilot_filetypes = {
        markdown = false,
        help = false,
        gitcommit = false,
      }
    end,
  },
}
