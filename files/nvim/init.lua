-- neovim entry point
-- leader must be set before lazy.nvim loads, so plugin keymaps pick it up
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

require('core.options')
require('core.keymaps')
require('core.lazy')
