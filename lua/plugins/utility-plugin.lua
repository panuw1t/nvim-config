return {
	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",
	{
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = "ibl",
		opts = {},
	},
	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	-- show diagnostics on top-right corner only when cursor is poisition.
	{
		'dgagn/diagflow.nvim',
		-- event = 'LspAttach', This is what I use personnally and it works great
		event = 'LspAttach',
		opts = {}
	}
}
