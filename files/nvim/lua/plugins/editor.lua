return {
    -- automatically pair () {} etc
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {},
    },

    -- color name/hex highlighter (replaces ap/vim-css-color)
    {
        'catgoose/nvim-colorizer.lua',
        event = { 'BufReadPre', 'BufNewFile' },
        main = 'colorizer',
        opts = {
            filetypes = { '*', '!lazy' },
            options = {
                -- css preset: names, hex, rgb, hsl, oklch, css_var
                parsers = { css = true },
            },
        },
    },

    -- navigate tmux panes and nvim splits with the same <C-h/j/k/l>
    -- note: this also needs the tmux side installed (christoomey/vim-tmux-navigator via tpm)
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
        keys = {
            { '<C-h>', '<cmd>TmuxNavigateLeft<CR>', desc = 'Navigate left' },
            { '<C-j>', '<cmd>TmuxNavigateDown<CR>', desc = 'Navigate down' },
            { '<C-k>', '<cmd>TmuxNavigateUp<CR>', desc = 'Navigate up' },
            { '<C-l>', '<cmd>TmuxNavigateRight<CR>', desc = 'Navigate right' },
        },
    },
}
