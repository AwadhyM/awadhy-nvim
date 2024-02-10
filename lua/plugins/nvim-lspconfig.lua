return {
	'neovim/nvim-lspconfig',
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.clangd.setup({})
		lspconfig.pyright.setup({})
		lspconfig.lua_ls.setup({
			settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					}
				}
		})
	end,

	-- Mappings for lsp
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}),
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}),
	vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {}),
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {}),
	vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {}),
}

