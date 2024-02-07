require('lazy').setup({
  {'rebelot/kanagawa.nvim',
	config = function()
		vim.cmd 'colorscheme kanagawa-wave'
	end,
  },

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter',
   	config = function()
    require "plugins.configs.treesitter"
	end,},
   -- LSP
   {'neovim/nvim-lspconfig',
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.clangd.setup({
		})
	end,
	},
	-- Lualine
	{
	'nvim-lualine/lualine.nvim',
	config = function()
		require 'plugins.configs.lualine'
	end,
	},
	-- Telescope
    {
	cmd = 'Telescope',
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	 dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require 'plugins.configs.telescope'
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end,
	},
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
})

