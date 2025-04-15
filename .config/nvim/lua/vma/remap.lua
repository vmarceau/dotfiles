vim.g.mapleader = " "

vim.keymap.set("n", "<C-l>", ":nohl<CR><C-l>")
vim.keymap.set("n", "<C-y>", "<C-y>k")
vim.keymap.set("n", "<C-e>", "<C-e>j")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>vx", "0t]rx")
vim.keymap.set("n", "<leader>vo", "0t]r ")
vim.keymap.set("n", "<leader>cp", [[:let @+=expand("%")<CR>]])

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/vma/packer.lua<CR>");

vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>dv", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>?", function()
  require("dapui").eval(nil, { enter = true })
end)

