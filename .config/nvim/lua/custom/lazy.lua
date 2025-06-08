-- [[ Lazy package manager ]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  -- Completions
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },
    -- use a release tag to download pre-built binaries
    version = '1.*',
    opts_extend = { "sources.default" }
  },

  -- Git
  { 'lewis6991/gitsigns.nvim' },

  -- Theme
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
        },
      })
      vim.cmd.colorscheme "terafox"
    end
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  { 'Bekaboo/dropbar.nvim' },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim' },

  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      'nvim-telescope/telescope-live-grep-args.nvim',
    },
  },

  -- Code formatting
  { 'stevearc/conform.nvim' },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  { 'stevearc/dressing.nvim' },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
    }
  },

  {
    'github/copilot.vim',
    enabled = false,
  },

  -- Load project config files
  { "folke/neoconf.nvim" }
}, {})
