local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set -- Shorten function name
local opt = vim.opt -- Set options (global/buffer/windows-scoped)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
opt.grepprg = "rg -b -F"

keymap("v", "<leader>f", ":<c-u>lua require('user.grep-operator').grep_operator(vim.fn.visualmode())<cr>", opts)

local function grep_operator(type)
	local saved_unnamed_register = vim.fn.getreg('"')
	if type == "v" then
		vim.cmd("normal! `<v`>y")
	else
		return
	end

	vim.cmd('silent execute "grep!" . shellescape(@@)')
	vim.cmd("copen")
	keymap("n", "<s-l>", ":lua require('user.grep-operator').cquickfix('cnext')<cr>", { noremap = true, silent = true, buffer = true })
	keymap("n", "<s-h>", ":lua require('user.grep-operator').cquickfix('cprevious')<cr>", { noremap = true, silent = true, buffer = true })

	vim.fn.setreg('"', saved_unnamed_register)
end

local function change_quickfix_window(command)
	local quickfix_return_to_window = vim.fn.winnr()

	if command == "cnext" then
		vim.cmd("cnext")
	elseif command == "cprevious" then
		vim.cmd("cprevious")
	end
	vim.cmd(quickfix_return_to_window .. "wincmd w")
end

return {
	grep_operator = grep_operator,
    cquickfix = change_quickfix_window,
}
