local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap.set -- Shorten function name
keymap({ "n", "v" }, "<Space>", "<Nop>", opts) --Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Remap for dealing with word wrap --{{{
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
--}}}

-- Diagnostic keymaps -- {{{
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap("n", "<leader>i", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
--}}}

-- open tempt.lua and source --{{{
keymap("n", "<leader>ev", ":execute \"edit \" . stdpath('config') . '/lua/tempt.lua'<cr>", { noremap = true, silent = true , desc = "[E]dit tempt"})
keymap("n", "<leader>sv", ":source $MYVIMRC<cr>", { noremap = true, silent = true , desc = "[S]source [V]imrc"})
---}}}

-- split window horizon above and vertical right --{{{
keymap("n", "<leader>vh", ':execute "leftabove split " . bufname("#")<cr>', { noremap = true, silent = true , desc = "leftabove split" })
keymap("n", "<leader>vv", ':execute "rightbelow vsplit " . bufname("#")<cr>', { noremap = true, silent = true , desc = "rightbelow split" })
--}}}

-- Better window navigation --{{{
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
--}}}

-- Resize with arrows --{{{
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
--}}}

-- Navigate buffers --{{{
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
--}}}

-- Move text up and down --{{{
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
--}}}

-- Better terminal navigation --{{{
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
--}}}

-- Miscellaneous --{{{
keymap("n", "<leader>j", "i<CR><ESC>", { desc = "new line with current cursor" })
keymap("i", "jk", "<ESC>", opts) -- Press jk fast to exit insert mode
keymap("i", "<c-l>", "<del>", opts) -- del
keymap("n", "<c-a>", "gg0vG$", opts) -- select all

--}}}
