return {
	'nvim-java/nvim-java',
	config = function()
		require('java').setup({
			-- Add any custom settings here
			jdk = {
				auto_install = true,
			},
		})

		-- Setup jdtls through lspconfig
		require('lspconfig').jdtls.setup({
			settings = {
				java = {
					configuration = {
						runtimes = {
							-- Add your JDK installations here if needed
							-- {
							--   name = "JavaSE-17",
							--   path = "/path/to/jdk-17",
							-- },
						},
					},
				},
			},
		})
	end,
	dependencies = {
		{
			'neovim/nvim-lspconfig',
			opts = {

				servers = {
					jdtls = {

					},
				},

				setup = {
				},
			},
		},
	},
}
