local map = vim.keymap.set

-- clear search highlight
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- keep selection when re-indenting
map('v', '<', '<gv', { desc = 'Outdent and keep selection' })
map('v', '>', '>gv', { desc = 'Indent and keep selection' })

-- move selected lines up and down
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- window splits
map('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
map('n', '<leader>ss', '<C-w>s', { desc = 'Split window horizontally' })
map('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- <C-h/j/k/l> window navigation comes from vim-tmux-navigator
-- gc / gcc commenting is built into neovim 0.10+, no plugin needed
