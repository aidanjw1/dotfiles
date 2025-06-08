-- [[ Configure LSPs ]]
require('mason').setup()

-- Project local settings config support
require("neoconf").setup()

local lspconfig = require('lspconfig')

-- Lua
lspconfig.lua_ls.setup {}

-- Golang
lspconfig.gopls.setup {}

-- Rust
lspconfig.rust_analyzer.setup {}

-- Web dev
lspconfig.ts_ls.setup {}
lspconfig.emmet_language_server.setup {}
