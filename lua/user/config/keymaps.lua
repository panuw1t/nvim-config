local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap.set -- Shorten function name
keymap("", "<Space>", "<Nop>", opts) --Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- open tempt.lua and source --{{{
keymap("n", "<leader>ev", ":execute \"edit \" . stdpath('config') . '/lua/user/tempt.lua'<cr>", opts)
keymap("n", "<leader>sv", ":source $MYVIMRC<cr>", opts)
---}}}

-- round with ' " [ { < --{{{
keymap("v", "<leader>'", "l<esc>`<i'<esc>`>a'<esc>", opts)
keymap("v", '<leader>"', 'l<esc>`<i"<esc>`>a"<esc>', opts)
keymap("v", "<leader>[", "l<esc>`<i[<esc>`>a]<esc>", opts)
keymap("v", "<leader>{", "l<esc>`<i{<esc>`>a}<esc>", opts)
keymap("v", "<leader><", "l<esc>`<i<<esc>`>a><esc>", opts)
--}}}

-- split window horizon above and vertical right --{{{
keymap("n", "<leader>vh", ':execute "leftabove split " . bufname("#")<cr>', opts)
keymap("n", "<leader>vv", ':execute "rightbelow vsplit " . bufname("#")<cr>', opts)
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
keymap("n", "<leader>j", "i<CR><ESC>", term_opts)  -- new line with current cursor
keymap("i", "jk", "<ESC>", opts)                   -- Press jk fast to exit insert mode 
keymap("n", "<c-u>", "viwU<esc>", opts)            -- to uppcase word 
keymap("i", "<c-l>", "<del>", opts)                -- del
keymap("n", "<c-a>", "gg0vG$", opts)               -- select all
keymap("n", "<leader>/", "/\\v", opts)             -- search with very magic
keymap("n", "<leader>nh", ":nohlsearch<cr>", opts) -- nohlsearch

--}}}
