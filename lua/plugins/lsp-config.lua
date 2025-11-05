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
                    "rust_analyzer",
                },
                automatic_installation = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Use the new vim.lsp.config API instead of require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            vim.lsp.config.rust_analyzer = {
                capabilities = capabilities,
                settings = {
                    ["rust-analyzer"] = {
                        cargo = { allFeatures = true },
                        check = { command = "clippy" },
                    },
                },
            }
            vim.lsp.enable('rust_analyzer')
            -- Lua Language Server
            vim.lsp.config.lua_ls = {}
            vim.lsp.enable('lua_ls')
            -- OmniSharp
            vim.lsp.config.omnisharp = {
                cmd = { vim.fn.stdpath("data") .. "/mason/packages/omnisharp-mono/omnisharp" },
                root_markers = { '*.sln', '*.csproj', 'omnisharp.json' },
                filetypes = { 'cs' },
                capabilities = capabilities,
                settings = {
                    omnisharp = {
                        enable_roslyn_analyzers = true,
                        organize_imports_on_format = true,
                    }
                }
            }
            vim.lsp.enable('omnisharp')
            -- Clangd
            vim.lsp.config.clangd = {
                capabilities = capabilities
            }
            vim.lsp.enable('clangd')
            -- Python LSP
            vim.lsp.config.pylsp = {
                capabilities = capabilities
            }
            vim.lsp.enable('pylsp')
        end
    },
}
