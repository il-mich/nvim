-- start grammar checker
require('lspconfig').ltex.setup(require('coq').lsp_ensure_capabilities())

-- 80 column hint
vim.wo.colorcolumn = vim.wo.colorcolumn .. '80'

-- set indentation
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
