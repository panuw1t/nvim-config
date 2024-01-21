local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- build spec
local plugins = {
    {
        import = "user.plugins"
    },
--   {
--       import = "user.plugins.lsp"
--   },
}

-- options lazy neovim
local opts = {
    defaults = {
        lazy = false
    },
}

require("lazy").setup(plugins, opts)

require("user.config.options")
require("user.config.keymaps")
