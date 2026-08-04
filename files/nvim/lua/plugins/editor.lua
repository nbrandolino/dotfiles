return {
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {},
    },

    {
        'catgoose/nvim-colorizer.lua',
        event = { 'BufReadPre', 'BufNewFile' },
        main = 'colorizer',
        opts = {
            filetypes = { '*', '!lazy' },
            options = {
                parsers = { css = true },
            },
        },
    },

    {
        'christoomey/vim-tmux-navigator',
        cmd = {
            'TmuxNavigateLeft',
            'TmuxNavigateDown',
            'TmuxNavigateUp',
            'TmuxNavigateRight',
            'TmuxNavigatePrevious',
            'TmuxNavigatorProcessList',
        },
        init = function()
            vim.g.tmux_navigator_no_mappings = 1
        end,
        keys = {
            { '<C-h>', '<cmd>TmuxNavigateLeft<CR>', mode = { 'n', 't' }, desc = 'Navigate left' },
            { '<C-j>', '<cmd>TmuxNavigateDown<CR>', mode = { 'n', 't' }, desc = 'Navigate down' },
            { '<C-k>', '<cmd>TmuxNavigateUp<CR>', mode = { 'n', 't' }, desc = 'Navigate up' },
        },
    },
}
