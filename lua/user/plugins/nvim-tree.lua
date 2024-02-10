return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            filters = {
                custom = {"^\\.git$"}
            }
        })
        vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<cr>", {silent = true})
    end,
}
