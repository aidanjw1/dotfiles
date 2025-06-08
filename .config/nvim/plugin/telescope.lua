-- [[ Configure Telescope ]]
require('telescope').setup {
  defaults = {
    layout_config = {
      height = 0.75,
      prompt_position = 'top',
    },
    sorting_strategy = 'ascending',
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
        ['<C-j>'] = require('telescope.actions').move_selection_next,
        ['<C-k>'] = require('telescope.actions').move_selection_previous,
      },
    },
  },
  extensions = {
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      grouped = true,
      path = "%:p:h",
      -- depth = 4,
      respect_gitignore = true,
      hidden = { file_browser = true, folder_browser = true },
      git_status = false,
    },
  },
}
require("telescope").load_extension "file_browser"
require("telescope").load_extension "live_grep_args"
vim.cmd [[command! Ex :Telescope file_browser ]]

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
