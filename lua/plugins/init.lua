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
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = 0}),
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = 0}),
			vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {buffer = 0}),
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = 0}),
			vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer = 0}),
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
})

