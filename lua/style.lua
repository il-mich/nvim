-- show line numbers
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

-- remove default bar
vim.o.showmode = false

