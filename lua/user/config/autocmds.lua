local augroup = vim.api.nvim_create_augroup("core", { clear = true }) -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd                           -- Create autocommand
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set                                         -- Shorten function name
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- general -- {{{
autocmd({ "FileType" }, {
    pattern = { "lua" },
    group = augroup,
    command = ":setlocal foldmethod=marker", -- set fold for lua file
})

--}}}

-- quickfix window --- {{{
autocmd({ "QuickFixCmdPost" }, {
    group = augroup,
    callback = function ()
        print(1123)
    end,
})

-- }}}

-- abbreviate correct wrong word ------------------------------ {{{
vim.cmd([[ iabbrev waht what
    iabbrev tehn then
]])
-- }}}

-- comment (in progress) --{{{
local function boy()
    print(112)
end

autocmd({ "FileType" }, {
    pattern = { "javascript" },
    group = augroup,
    callback = function(args)
        keymap("n", "<c-_>", "I //", { buffer = args.buf }) -- <c-_> = <c-/>
        keymap("n", "<localleader>p", boy, { buffer = args.buf })
    end,
})

--}}}
