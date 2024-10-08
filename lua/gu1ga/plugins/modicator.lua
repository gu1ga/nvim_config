return
{
	'mawkler/modicator.nvim',
	dependencies = color_scheme.color_scheme,
	config = function ()
		require('modicator').setup({
			show_warnings = true,
		})
	end
}
