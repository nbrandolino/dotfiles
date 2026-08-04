local opt = vim.opt

-- ui
opt.number = true
opt.signcolumn = 'yes'
opt.cursorline = true
opt.termguicolors = true
opt.showmode = false
opt.scrolloff = 8
opt.splitbelow = true
opt.splitright = true
opt.guifont = 'FiraCode Nerd Font:h11'

-- indentation
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- editing
opt.mouse = 'a'
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 400

-- search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- briefly highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
