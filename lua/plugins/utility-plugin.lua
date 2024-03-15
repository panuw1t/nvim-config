return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- Add indentation guides even on blank lines
    {
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        opts = {
            exclude = {
                filetypes = { 'dashboard' },
            },
        },
    },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {}, -- this is equalent to setup({}) function
    },

    -- show diagnostics on top-right corner only when cursor is poisition.
    {
        'dgagn/diagflow.nvim',
        -- event = 'LspAttach', This is what I use personnally and it works great
        event = 'LspAttach',
        opts = {},
    },

    -- start-up neovim
    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('plugins.config.dashboard')
        end,
    },

    {
        "kylechui/nvim-surround",
        version = '*', -- Use for stability; omit to use `main` branch for the latest features
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },
}
