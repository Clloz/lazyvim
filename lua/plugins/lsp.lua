-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Vue / TS / JS
        vtsls = {
          flags = { debounce_text_changes = 150 },
        },
        vue_ls = {
          flags = { debounce_text_changes = 150 },
        },
        eslint = {
          -- flags = { debounce_text_changes = 300 },
          settings = {
            run = "onSave",
            codeActionOnSave = {
              enable = true,
              mode = "all",
            },
          },
        },

        -- C / C++
        clangd = {},

        -- Python
        pyright = {
          settings = {
            python = {
              analysis = {
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
        ruff = {},

        -- Rust
        -- rust_analyzer = {
        --   settings = {
        --     ["rust-analyzer"] = {
        --       check = {
        --         command = "clippy",
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
