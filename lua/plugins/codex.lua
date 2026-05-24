-- ~/.config/nvim/lua/plugins/codex.lua
return {
  {
    "anirudhsundar/codex.nvim",
    keys = {
      {
        "<leader>ce",
        function()
          require("codex").ask("@this: ", { submit = true })
        end,
        mode = { "n", "x" },
        desc = "Ask Codex",
      },
      {
        "<leader>cx",
        function()
          require("codex").select()
        end,
        mode = { "n", "x" },
        desc = "Codex actions",
      },
    },
    init = function()
      vim.o.autoread = true
      vim.g.codex_opts = {}
    end,
  },
}
