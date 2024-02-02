local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("keymaps")
require("options")
require("lazy").setup("plugins")
require("diagnostic") -- Must be required after loading plugins.

-- Remove trailing white spaces on save.
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- Remove number line in terminal mode.
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])
