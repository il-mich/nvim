-- number of undo levels
vim.o.undolevels = 1000

-- case-insensitive search
vim.o.ignorecase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<cr>', {noremap = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- copy to clipboard
vim.cmd('set clipboard+=unnamedplus')

-- tabs are four columns wide
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

-- use tabs for indentation
vim.bo.expandtab = false

-- show hybrid line numbers
vim.o.number = true
vim.o.relativenumber = true

-- wrap lines
vim.o.wrap = true

-- use the number column for the text of wrapped lines
vim.o.cpoptions = vim.o.cpoptions .. 'n'

-- break lines at word
vim.o.linebreak = true

-- highlight matching brace
vim.o.showmatch = true

-- line height
vim.o.linespace = 2

-- return to last edited position when opening a file
vim.api.nvim_command('autocmd BufReadPost * silent! normal! g`"zv')

-- remove trailing whitespaces on write
vim.api.nvim_command('autocmd BufWritePre * %s/\\s\\+$//e')

