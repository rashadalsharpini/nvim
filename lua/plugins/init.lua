return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua", "python", "javascript", "typescript", "c", "cpp", "bash", "html", "css", "c_sharp", 
                },
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true,
            })
        end,
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup {
                style = "cool", -- options: dark, darker, cool, deep, warm, warmer, light
                transparent = true
            }
            require("onedark").load()
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            -- fill any relevant options here
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- This is your opts table
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    },

    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = require("config.troubleMaps"),
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "michaelrommel/nvim-silicon",
        lazy = true,
        cmd = "Silicon",
        config = function ()
            local outputdir = "~/Pictures/screenShot/CodeShots/"
            require("silicon").setup({
                font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
                to_clipboard = true,
                background = "#9ca8b3",
                output = function ()
                    local stamp = os.date("%Y-%m-%d_%H-%M-%S")
                    local name = vim.fn.expand("%:t"):gsub("%.", "_")
                    return  outputdir .. name .. stamp .. ".png"
                end,
            })
        end
    },
}
