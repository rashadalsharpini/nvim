return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter")
            configs.setup({
                ensure_installed = {
                    "lua",
                    "python",
                    "javascript",
                    "typescript",
                    "c",
                    "cpp",
                    "bash",
                    "html",
                    "css",
                    "c_sharp",
                    "vimdoc", -- Highly recommended for help files
                    "vim",
                },
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true,
            })
        end,
    },
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
                contrast = "",            -- "hard" | "soft" | ""
                transparent_mode = false, -- false = show light background color
            })
            vim.o.background = "light"    -- must be set before loading the colorscheme
            vim.cmd("colorscheme gruvbox")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup()
        end,
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = require("config.troubleMaps"),
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
    {
        "michaelrommel/nvim-silicon",
        lazy = true,
        cmd = "Silicon",
        config = function()
            local outputdir = "~/Pictures/Screenshots/CodeShots/"
            require("silicon").setup({
                font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
                to_clipboard = true,
                background = "#ECDDB4",
                output = function()
                    local stamp = os.date("%Y-%m-%d_%H-%M-%S")
                    local name = vim.fn.expand("%:t"):gsub("%.", "_")
                    return outputdir .. name .. stamp .. ".png"
                end,
            })
        end,
    },
    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                cmdline = {
                    view = "cmdline_popup",
                    opts = {
                        position = {
                            row = "25%", -- move it higher than center
                            col = "50%",
                        },
                        size = {
                            min_width = 60,
                            width = "auto",
                            height = "auto",
                        },
                    },
                },
                presets = {
                    -- disable bottom_search if you want custom positioning
                    bottom_search = false,
                },
            })
        end,
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#1e222a", -- matches OneDark (cool)
                stages = "fade_in_slide_out",
                timeout = 2000,
            })
            vim.notify = require("notify") -- make it the default notification handler
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            window = {
                width = 30,
            },
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl", -- newer API name
        opts = {
            indent = { char = "│" }, -- or "▏" or "┊"
            scope = { enabled = true },
        },
    },
    {
        "prichrd/netrw.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Required for icons
        config = function()
            require("netrw").setup({
                use_devicons = true,
            })
        end,
    },
    {
        "lewis6991/gitsigns.nvim"
    }
}
