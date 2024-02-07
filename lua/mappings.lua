local map = vim.keymap.set
-- Mappings for telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>gf", builtin.git_files, {})
map("n", "<leader>gc", builtin.git_commits, {})
map("n", "<leader>ps",function() builtin.grep_string({ search = vim.fn.input("Grep > ")}); end)

-- Mappings for lsp
map('n', 'K', vim.lsp.buf.hover, {buffer = 0})
map('n', 'gd', vim.lsp.buf.definition, {buffer = 0})
map('n', 'gt', vim.lsp.buf.type_definition, {buffer = 0})
map('n', 'gi', vim.lsp.buf.implementation, {buffer = 0})
map('n', '<leader>df', vim.diagnostic.goto_next, {buffer = 0})
