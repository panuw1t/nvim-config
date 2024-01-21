local opts = { noremap = true, silent = true }
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)
local keymap = vim.keymap.set -- Shorten function name
vim.g.mapleader = " "

-- options --{{{
opt.grepprg = "rg -b"

--}}}

-- keymap ------------------------------ {{{

-- match pattern (trailing whitespace as an error)
keymap("n", "<leader>ww", ":match Error /\\v +$/<cr>", opts)
keymap("n", "<leader>we", ":match none<cr>", opts)

-- }}}

-- abbreviate ---------------------------- {{{
vim.cmd([[ iabbrev waht what
    iabbrev tehn then
    iabbrev @@ jonh2544za@gmail.com
    iabbrev ccopy copyright 2024 panuvity sreudomdetsakull, all rights reserved.
]])
-- }}}

-- autocmd ------------------------------ {{{
vim.cmd([[
  augroup keymap_boy
    autocmd!
    autocmd BufNewFile,BufRead *.js setlocal norelativenumber wrap
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
  augroup END
]])
-- }}}

-- autocmd abbreviate ------------------------------ {{{
vim.cmd([[
  augroup abbrev_program
    autocmd!
    autocmd FileType python     :iabbrev <buffer> iff if:<left>
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    autocmd FileType javascript :iabbrev <buffer> fn function()<left>
    autocmd BufNewFile,BufRead *.html :iabbrev <buffer> ''' &ldquo
    autocmd BufNewFile,BufRead *.html :iabbrev <buffer> """ &rdquo
  augroup END
]])
-- }}}

-- autogroup ------------------------------ {{{
vim.cmd([[
  augroup filetype_html
      autocmd!
      autocmd filetype html nnoremap <buffer> <localleader>f vatzf
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

-- set fold for luafile ------------------------------ {{{
vim.cmd([[
  augroup markdown_for_txt
      autocmd!
      autocmd FileType lua setlocal foldmethod=marker
  augroup END
]])
-- }}}

print("vimrc is source")
