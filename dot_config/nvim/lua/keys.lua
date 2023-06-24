local g = vim.g
local map = vim.keymap
g.mapleader = ' '
g.maplocalleader = ' '

map.set('n', '<Space>', '<Nop>', { noremap = true, silent = true })
map.set('n', '<C-s>', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
map.set('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map.set('n', '<Leader>ff', ':Telescope find_files hidden=true<CR>', { silent = true })
map.set('n', '<Leader>fr', ':Telescope live_grep<CR>', { silent = true })
