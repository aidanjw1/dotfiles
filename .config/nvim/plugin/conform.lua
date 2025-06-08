require("conform").setup({
  formatters_by_ft = {
    go = { "gofmt", "gofumpt" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    rust = { "rustfmt" },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
})


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
