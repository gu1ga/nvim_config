vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
