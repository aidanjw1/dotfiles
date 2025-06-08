require('blink.cmp').setup({
  keymap = {
    preset = 'super-tab',

    ['<C-k>'] = { 'select_prev', 'fallback' },
    ['<C-j>'] = { 'select_next', 'fallback' },
  },

  -- Default list of enabled providers defined so that you can extend it
  -- elsewhere in your config, without redefining it, due to `opts_extend`
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  cmdline = { enabled = false },

  fuzzy = { implementation = "prefer_rust_with_warning" },

  -- Disable it for dressing prompts
  enabled = function() return (vim.bo.buftype ~= 'nofile') end,
})

