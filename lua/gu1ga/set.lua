vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.number = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.filetype.add {
	extension ={
		PY = 'python',
	},
}
