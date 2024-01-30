local opts = { noremap = true, silent = true }
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)
local keymap = vim.keymap.set -- Shorten function name
vim.g.mapleader = " "

-- options --{{{

--}}}

-- keymap ------------------------------ {{{

-- match pattern (trailing whitespace as an error)
keymap("n", "<leader>ww", ":match Error /\\v +$/<cr>", opts)
keymap("n", "<leader>we", ":match none<cr>", opts)

-- }}}

-- abbreviate ---------------------------- {{{
vim.cmd([[ iabbrev @@ jonh2544za@gmail.com
    iabbrev ccopy copyright 2024 panuvity sreudomdetsakull, all rights reserved.
]])
-- }}}

-- autocmd ------------------------------ {{{
vim.cmd([[
  augroup keymap_boy
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
  augroup END
]])
-- }}}

-- markdown Topic and email ------------------------------ {{{
vim.cmd([[
  augroup markdown_for_txt
      autocmd!
      autocmd filetype text onoremap ih :<c-u>execute "normal! ?^==\\+$\\\|^--\\+$\r:nohlsearch\rkvg_"<cr>
      autocmd filetype text onoremap ah :<c-u>execute "normal! ?^==\\+$\\\|^--\\+$\r:nohlsearch\rg_vk0"<cr>
      autocmd filetype text onoremap in@ :<c-u>execute "normal! /[a-zA-Z0-9._%+-]\\+@[a-zA-Z0-9.-]\\+\\.\r:nohlsearch\rvf@h"<cr>
  augroup END
]])
-- }}}

print("vimrc is source")
