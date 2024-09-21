return {
	'loctvl842/monokai-pro.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			transparent_background = true,
			filter = "classic"
		})
		vim.cmd([[colorscheme monokai-pro]])
	end
	}
