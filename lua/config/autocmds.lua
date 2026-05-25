-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "InsertEnter", "TermEnter" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave", "TermLeave" }, {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

vim.filetype.add({
  filename = {
    [".gitconfig.local"] = "gitconfig",
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.schedule(function()
      vim.lsp.document_color.enable(false, { bufnr = ev.buf })
    end)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.vue" },
  callback = function()
    vim.cmd("silent! LspEslintFixAll")
  end,
})
