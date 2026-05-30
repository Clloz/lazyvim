local ls = require("luasnip")

local s = ls.snippet
local f = ls.function_node

ls.add_snippets("markdown", {
  s("date", {
    f(function()
      return os.date("%Y-%m-%d")
    end),
  }),

  s("now", {
    f(function()
      return os.date("%Y-%m-%d %H:%M:%S")
    end),
  }),
})
