return {
  {
    "mason-org/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "omnisharp_mono",
          "clangd",
          "cmake",
          "pylsp",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.lua_ls.setup({})
      lspconfig.omnisharp.setup({
        cmd = { vim.fn.stdpath("data") .. "/home/rashad/.local/share/nvim/mason/packages/omnisharp-mono/omnisharp" },
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities
      })
    end
  },
}
