return  {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	opts = {
			ensure_installed = {"tsx,jsx,html,javascript", "python", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

			sync_install = false,

			auto_install = true,

			highlight = {enable = true},
		}
	}
