return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
						capabilities = capabilities
					})
				end,
			}
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
				},
				handlers = handlers,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		end,
	},
}
