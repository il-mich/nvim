local map  = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- navigate windows with Ctrl+{h,j,k,l} in any mode
-- from terminal
map('t', '<C-h>', '<C-\\><C-N><C-w>h', opts)
map('t', '<C-j>', '<C-\\><C-N><C-w>j', opts)
map('t', '<C-k>', '<C-\\><C-N><C-w>k', opts)
map('t', '<C-l>', '<C-\\><C-N><C-w>l', opts)

-- from insert
map('i', '<C-h>', '<C-\\><C-N><C-w>h', opts)
map('i', '<C-j>', '<C-\\><C-N><C-w>j', opts)
map('i', '<C-k>', '<C-\\><C-N><C-w>k', opts)
map('i', '<C-l>', '<C-\\><C-N><C-w>l', opts)

-- from normal
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- exit terminal insert mode
map('t', '<C-e>', '<C-\\><C-N>', opts)

-- enhanced i/a commands
require('mini.ai').setup()

