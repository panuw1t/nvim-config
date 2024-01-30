local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

-- General ---------------------------------------------{{{
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.swapfile = false                  -- Don't use swapfile
opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options
-- opt.fileencoding = 'utf-8'            -- the encoding written to a file

--}}}

-- Neovim UI ------------------------------------------{{{
opt.number = true           -- Show line number
opt.relativenumber = true   -- Show relativenumber number
opt.numberwidth = 4         -- width column of show number
opt.showmatch = true        -- Highlight matching parenthesis
-- opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.foldlevelstart = 0 		-- start fold with closed
opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.wrap = true             -- Wrap on word boundary
opt.linebreak = true        -- companion to wrap, don't split words
opt.textwidth = 60
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus = 3          -- Set global statusline
opt.scrolloff = 8           -- Set scroll off
opt.signcolumn = "yes"      -- always show the sign column, otherwise it would shift the text each time

--}}}

-- Search ---------------------------------------------{{{
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.hlsearch = false		-- no highlight on search
opt.incsearch = true		-- highlight the first matching 

--}}}

-- Tabs, indent	---------------------------------------{{{
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines

--}}}

-- Memory, CPU	---------------------------------------{{{
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 250        -- ms to wait for trigger an event

--}}}
