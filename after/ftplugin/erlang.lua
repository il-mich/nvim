-- start erlang language server
require('lspconfig').erlangls.setup(require('coq').lsp_ensure_capabilities())

-- reset indentation
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = false

