-- lua/plugins/colorizer.lua
return {
  "norcalli/nvim-colorizer.lua",
  event = "BufReadPost",
  config = function()
    require("colorizer").setup({
      "*", -- 所有文件类型
    }, {
      mode = "background", -- 用背景色显示（最直观）
    })
  end,
}
