-- number of undo levels
vim.o.undolevels = 1000

-- undo sessions
vim.bo.undofile = true

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<CR>', {noremap = true, silent = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- change split behaviour
vim.o.splitbelow = true
vim.o.splitright = true

-- copy to clipboard
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'

-- return to last edited position when opening a file
vim.api.nvim_command('autocmd BufReadPost * silent! normal! g`"zv')

-- use zsh as shell
vim.o.shell = 'zsh'

-- python executable
vim.g.python3_host_prog = '/usr/bin/python'

-- autopairs
require('mini.pairs').setup()

-- surround
require('mini.surround').setup()

-- autocommenter
require('mini.comment').setup()

-- sessions
require('mini.sessions').setup()

-- startup page
require('mini.starter').setup()

-- trailspace
require('mini.trailspace').setup()

