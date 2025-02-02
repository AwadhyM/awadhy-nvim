return {
	'nvim-telescope/telescope.nvim', tag = '4.1.5',
    dependencies = {
    	'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	},
	config = function()
		require('telescope').setup{
			defaults = {
				prompt_prefix = "$ ",
			},
		}
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>gs",function() builtin.grep_string({ search = vim.fn.input("Grep > ")}); end)local builtin = require('telescope.builtin')


		-- The code below is a potential alternative to searching within buffer.
		-- -- Map '/' to start current_buffer_fuzzy_find with custom options
		-- vim.keymap.set("n", "/", function()
		--   builtin.current_buffer_fuzzy_find({
		-- 	theme = "ivy",  -- Use the 'ivy' theme
		-- 	sorting_strategy = "ascending",  -- Sort results in ascending order
		-- 	layout_config = {
		-- 	  prompt_position = "top",  -- Place the prompt at the top
		-- 	},
		--   })
		-- end, { noremap = true, silent = true })

		require('telescope').load_extension('fzf')
	end,
}
