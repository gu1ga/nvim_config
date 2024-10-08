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
	extension = {
		PY = 'python',
	},
}


--LSP STUFF
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf })
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = args.buf })
		vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, { buffer = args.buf })
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf })
		vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, { buffer = args.buf })
		vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { buffer = args.buf })
		vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, { buffer = args.buf })
	end,
})
