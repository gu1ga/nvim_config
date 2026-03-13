-- color_scheme = 'rebelot/kanagawa.nvim'
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	priority = 1000,
-- 	-- dependencies = { "tjdevries/colorbuddy.nvim" },
--
-- 	config = function()
-- 		require("kanagawa").setup({})
-- 		vim.cmd("colorscheme kanagawa")
-- 	end,
-- }
-- require("lazy").setup({
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
-- 		background = "soft",
--     })
--   end,
-- })

color_scheme = 'neanias/everforest-nvim'
return {
	"neanias/everforest-nvim",
	priority = 10000,
	  config = function()
		require("everforest").setup({
			background = "soft",
		})
		vim.cmd("colorscheme everforest")
  end,
}
