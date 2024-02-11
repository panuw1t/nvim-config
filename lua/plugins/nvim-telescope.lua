return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
        -- Fuzzy Finder Algorithm which requires local dependencies to be built.
        -- Only load if `make` is available. Make sure you have the system
        -- requirements installed.
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            -- NOTE: If you are having trouble with this installation,
            --       refer to the README for telescope-fzf-native for more instructions.
            build = "make",
            cond = function()
                return vim.fn.executable("make") == 1
            end,
        },
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Telescope" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Telescope" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Telescope" },
    },
    -- config = function()
    --     local builtin = require('telescope.builtin')
    --     vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    --     vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    --     vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    --     vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    -- end,
}
