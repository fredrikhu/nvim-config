require("damme.remap")
vim.api.nvim_exec('language en_US', true)

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd[[set softtabstop=0 noexpandtab]]

vim.opt.termguicolors = true

vim.diagnostic.config({ update_in_insert = true })

vim.cmd[[set number]]
vim.cmd[[set nu rnu]] -- relative line numbers

vim.cmd[[set scrolloff=15]] -- always keep 15 lines of context above/below cursor

vim.cmd[[set ignorecase]]
vim.cmd[[set smartcase]]
