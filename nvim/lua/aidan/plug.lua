local Plug = vim.fn['plug#']

vim.fn["plug#begin"]()

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.1' })

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug('shaunsingh/moonlight.nvim')

Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('romgrk/barbar.nvim')

Plug('williamboman/mason.nvim', { ['do'] = ':MasonUpdate' })
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

vim.fn["plug#end"]()

