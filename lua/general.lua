-- number of undo levels
vim.o.undolevels = 1000

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<cr>', {noremap = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- copy to clipboard
vim.o.clipboard = 'unnamedplus'

-- show line numbers
vim.o.number = true

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

-- load auto indent plugin
require('paq') { 'ciaranm/detectindent' }

-- default indent level
vim.g.detectindent_preferred_indent = 4

-- use detectindent on every file
vim.api.nvim_command('autocmd BufNewFile,BufRead,VimEnter * :DetectIndent')

-- return to last edited position when opening a file
vim.api.nvim_command('autocmd BufReadPost * silent! normal! g`"zv')

-- remove trailing whitespaces on write
vim.api.nvim_command('autocmd BufWritePre * %s/\\s\\+$//e')

