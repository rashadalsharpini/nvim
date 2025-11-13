vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	callback = function()
		vim.opt_local.foldmethod = "indent"
		vim.opt_local.foldlevel = 99 -- unfold all folds
	end,
})
