vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('n', '""', 'ciw""<Esc>Pb', { noremap = true, silent = true })
vim.wo.number= true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
	{ "olimorris/onedarkpro.nvim", priority= 1000 }, 
	{ "projekt0n/github-nvim-theme", priority= 1000 }, 
	{ "rose-pine/neovim", name= "rose-pine" },
	{ "zootedb0t/citruszest.nvim", lazy= false, priority= 1000, },
})

-- vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme citruszest")
vim.cmd("colorscheme github_dark_tritanopia")
