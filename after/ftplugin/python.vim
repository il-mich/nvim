lua << EOF
-- python executable
vim.g.python3_host_prog = '/usr/bin/python'

-- start python language server
require('lspconfig').pyright.setup(require('coq').lsp_ensure_capabilities())
EOF

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

