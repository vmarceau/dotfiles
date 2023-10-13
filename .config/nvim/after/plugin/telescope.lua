local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<C-a>"] = actions.send_selected_to_qflist + actions.open_qflist
      },
      n = {
        ["<C-a>"] = actions.send_selected_to_qflist + actions.open_qflist
      }
    }
  },
}

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>tf', builtin.git_files, {})
vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', '<leader>tr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ts', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>tc', builtin.git_bcommits, {})
