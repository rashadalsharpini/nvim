return {
    -- {
    --     "navarasu/onedark.nvim",
    --     priority = 1000,
    --     config = function()
    --         require("onedark").setup {
    --             style = "cool", -- options: dark, darker, cool, deep, warm, warmer, light
    --             transparent = true
    --         }
    --         require("onedark").load()
    --     end
    -- },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                contrast = "", -- "hard" | "soft" | ""
                transparent_mode = false,
            })
            vim.o.background = "light"
            vim.cmd("colorscheme gruvbox")
        end,
    }
}
