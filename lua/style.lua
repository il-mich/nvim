-- show hybrid line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- remove numbers in terminal
vim.cmd('autocmd TermOpen * set nonumber')
vim.cmd('autocmd TermOpen * set norelativenumber')

-- wrap lines
vim.o.wrap = true

-- use the number column for the text of wrapped lines
vim.o.cpoptions = vim.o.cpoptions .. 'n'

-- break lines at word
vim.o.linebreak = true

-- remove tilde in EndOfBuffer
vim.cmd('highlight EndOfBuffer ctermfg=black guifg=bg')

-- highlight matching brace
vim.o.showmatch = true

-- line height
vim.o.linespace = 2

-- remove default bar
vim.o.showmode = false

