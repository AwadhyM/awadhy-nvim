require "options" -- Load the contents of the options file that is located in lua/options

vim.cmd.colorscheme('default')

-- Lazy.nvim Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- define local variable that is essentially a path. .. means concatenation in lua
if not vim.loop.fs_stat(lazypath) then -- if path does not exist on file then...
  vim.fn.system({						-- install lazy.nvim
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) -- add the path to the front of the vim run time path. (List of paths accessible to neovim)

require "plugins"

vim.cmd.colorscheme('kanagawa')
