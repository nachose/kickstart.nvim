
-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.o.incsearch = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- One line margin while scrolling
vim.o.scrolloff = 1
-- Fifty files history
vim.o.history = 50
vim.o.autoread = true
vim.o.ruler = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
-- vim.o.langmenu = es_es.utf8
-- vim.o.encoding = utf-8
vim.o.cindent = true
-- vim.o.cinkeys -= 0#
-- vim.o.indentkeys-= 0#
-- vim.o.showmatch= true
vim.o.showcmd = true
vim.o.showmode = true
-- Set highlight on search
vim.o.hlsearch = true
vim.o.list = true
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamed,unnamedplus'
vim.o.wrapscan = true
vim.o.smoothscroll = true
vim.o.wildmenu = true

vim.o.foldenable = true
-- vim.o.foldmethod = fold-manual



-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'


-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true


-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

