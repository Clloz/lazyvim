local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node

ls.add_snippets("vue", {
  s("vue3", {
    t({
      '<script setup lang="ts">',
      "",
      "</script>",
      "",
      "<template>",
      "",
      "</template>",
    }),
  }),
})
