vim.g.lightline = {
  colorscheme = 'gruvbox',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'FugitiveHead' },
}

vim.o.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("gruvbox")
