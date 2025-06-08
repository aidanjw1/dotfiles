-- [[ Options ]]

vim.o.hlsearch = false
vim.o.number = true
vim.o.mouse = 'a'
-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'
-- Enable break indent
vim.o.breakindent = true
-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.termguicolors = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.foldmethod = 'indent'
-- Expand all folds by default
vim.o.foldlevelstart = 99
vim.o.spell = false
vim.o.autoread = true
vim.o.cursorline = true
vim.o.wrap = false
vim.g.have_nerd_font = true
vim.o.relativenumber = true
