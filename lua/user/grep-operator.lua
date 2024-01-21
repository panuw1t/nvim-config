local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>g", ":set operatorfunc=GrepOperator<cr>g@", opts)
vim.keymap.set("v", "<leader>g", ":<c-u>call GrepOperator(visualmode())<cr>", opts)

vim.cmd([[
	function! GrepOperator(type)
		if a:type ==# 'v'
			execute "normal! `<v`>y"
		elseif a:type ==# 'char'
			execute "normal! `[v`]y"
		else
			return
		endif

		execute "grep! /s " . shellescape(@@) . " *" 
	endfunction
]])
