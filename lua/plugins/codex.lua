-- ~/.config/nvim/lua/plugins/codex.lua
return {
  {
    "anirudhsundar/codex.nvim",
    config = function()
      vim.o.autoread = true

      vim.g.codex_opts = {}

      vim.keymap.set({ "n", "x" }, "<leader>ce", function()
        require("codex").ask("@this: ", { submit = true })
      end, { desc = "Ask Codex" })

      vim.keymap.set({ "n", "x" }, "<leader>cx", function()
        require("codex").select()
      end, { desc = "Codex actions" })
    end,
  },
}
