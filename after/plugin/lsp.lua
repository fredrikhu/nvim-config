local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require'lspconfig'.csharp_ls.setup{}
require'lspconfig'.ts_ls.setup{}
require'lspconfig'.svelte.setup{}

vim.keymap.set("i", "<c-s>", vim.lsp.buf.signature_help)
