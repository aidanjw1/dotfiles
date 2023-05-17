-- empty setup using defaults
require("nvim-tree").setup()

local api = require('nvim-tree.api')
vim.keymap.set("n", "<leader>tt", api.tree.toggle, {})
vim.keymap.set("n", "<leader>t", api.tree.focus, {})

