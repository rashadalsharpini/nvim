return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            rust = { "rustfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            sh = { "shfmt" },
        },
        formatters = {
            ["clang-format"] = {
                prepend_args = { "--style={BasedOnStyle: llvm, IndentWidth: 4}" },
            },
        },
        -- format_on_save = {
        -- 	timeout_ms = 500,
        -- 	lsp_fallback = true,
        -- },
    },
}
