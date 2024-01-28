require('lazy').setup({
  {'rebelot/kanagawa.nvim'},

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter',
   	config = function()
    require "plugins.configs.treesitter"
	end,},
})

