return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    keys = {
        {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope"},
        {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope"},
        {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope"},
        {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope"},
    },
    -- config = function()
    --     local builtin = require('telescope.builtin')
    --     vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    --     vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    --     vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    --     vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    -- end,
}
