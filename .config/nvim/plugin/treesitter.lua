-- [[ Configure Treesitter ]]
vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash', 'templ' },

    auto_install = false,

    highlight = { enable = true },
    indent = { enable = false },
  }
end, 0)
