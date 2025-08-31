vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.number = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Adding .PY with capital letters
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
		-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
		vim.keymap.set("n", "<leader>ca", function()
			require("tiny-code-action").code_action()
		end, { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = args.buf })
		vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { buffer = args.buf })
		vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { buffer = args.buf })
	end,
})

-- Hover Background Color
vim.api.nvim_set_hl(0, 'NormalFloat', {guibg='#1e1e2e'})
