color_scheme = 'nobbmaestro/nvim-andromeda'
 return {
   "nobbmaestro/nvim-andromeda",
   priority = 1000,
   dependencies = { "tjdevries/colorbuddy.nvim" },

   config = function()
     require("andromeda").setup({
       preset = "andromeda",
	   transparent_bg = true
     })
   end,
}
