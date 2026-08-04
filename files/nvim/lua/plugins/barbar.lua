-- buffer tab bar
-- alt-h/alt-l are taken by tmux (M-H/M-L switch windows), so buffers use alt-,/alt-.
return {
    'romgrk/barbar.nvim',
    version = '^1.0.0',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    event = 'VeryLazy',
    opts = {
        animation = false,
        clickable = true,
        -- keep the tab bar clear of the file explorer.
        -- do not add aerial here: barbar caches the sidebar window id and closing
        -- aerial leaves it stale, which then errors on every subsequent buffer open.
        sidebar_filetypes = {
            NvimTree = true,
        },
    },
    keys = {
        { '<A-,>', '<cmd>BufferPrevious<CR>', desc = 'Previous buffer' },
        { '<A-.>', '<cmd>BufferNext<CR>', desc = 'Next buffer' },
        { '<A-<>', '<cmd>BufferMovePrevious<CR>', desc = 'Move buffer left' },
        { '<A->>', '<cmd>BufferMoveNext<CR>', desc = 'Move buffer right' },
        { '<A-c>', '<cmd>BufferClose<CR>', desc = 'Close buffer' },
        { '<leader>bp', '<cmd>BufferPin<CR>', desc = 'Pin buffer' },
        { '<leader>bb', '<cmd>BufferPick<CR>', desc = 'Pick buffer' },
        { '<leader>bo', '<cmd>BufferCloseAllButCurrentOrPinned<CR>', desc = 'Close other buffers' },
        { '<A-1>', '<cmd>BufferGoto 1<CR>', desc = 'Go to buffer 1' },
        { '<A-2>', '<cmd>BufferGoto 2<CR>', desc = 'Go to buffer 2' },
        { '<A-3>', '<cmd>BufferGoto 3<CR>', desc = 'Go to buffer 3' },
        { '<A-4>', '<cmd>BufferGoto 4<CR>', desc = 'Go to buffer 4' },
        { '<A-5>', '<cmd>BufferGoto 5<CR>', desc = 'Go to buffer 5' },
        { '<A-6>', '<cmd>BufferGoto 6<CR>', desc = 'Go to buffer 6' },
        { '<A-7>', '<cmd>BufferGoto 7<CR>', desc = 'Go to buffer 7' },
        { '<A-8>', '<cmd>BufferGoto 8<CR>', desc = 'Go to buffer 8' },
        { '<A-9>', '<cmd>BufferLast<CR>', desc = 'Go to last buffer' },
    },
}
