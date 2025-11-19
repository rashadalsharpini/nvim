return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"cmake",
					"pylsp",
					"rust_analyzer",
					"omnisharp",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- Fix: ensure diagnostics always refresh
			vim.diagnostic.config({
				update_in_insert = true,
				underline = true,
				virtual_text = true,
				severity_sort = true,
			})
			vim.lsp.config.rust_analyzer = {
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						cargo = { allFeatures = true },
						check = { command = "clippy" },
					},
				},
			}
			vim.lsp.enable("rust_analyzer")
			vim.lsp.config.lua_ls = {
				capabilities = capabilities,
			}
			vim.lsp.enable("lua_ls")
			vim.lsp.config.pylsp = {
				capabilities = capabilities,
			}
			vim.lsp.enable("pylsp")
			vim.lsp.config.clangd = {
				capabilities = capabilities,
			}
			vim.lsp.enable("clangd")
			vim.lsp.config.omnisharp = {
				capabilities = capabilities,
				cmd = { vim.fn.stdpath("data") .. "/mason/packages/omnisharp/omnisharp" },
				filetypes = { "cs" },
			}
			vim.lsp.enable("omnisharp")
		end,
	},
}
