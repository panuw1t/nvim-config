return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
	config = function()
		require("lualine").setup({ options = { theme = "ayu_mirage" } })
	end,
}
