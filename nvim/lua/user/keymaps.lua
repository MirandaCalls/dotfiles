vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Allows vertical movement through wrapped text
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Leave text selected after indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Preserve cursor position after yank
vim.keymap.set('v', 'y', 'myy`y')

-- Remap vim command history to exit
vim.keymap.set('n', 'q:', ':q')

-- When pasting over something, don't copy whatever was replaced
vim.keymap.set('v', 'p', '"_dP')

-- While in insert mode, double tap ; or , to insert the character at the end of the line
vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')

-- Clears search highlighting
vim.keymap.set('n', '<Leader>k', ':nohlsearch<CR>')

-- Move lines up and down.
vim.keymap.set('i', '<C-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<C-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<C-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<C-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<C-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":move '<-2<CR>gv=gv")
