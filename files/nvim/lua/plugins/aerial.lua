return {
    'stevearc/aerial.nvim',
    branch = 'nvim-0.11',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    cmd = { 'AerialToggle', 'AerialOpen', 'AerialNavToggle' },
    keys = {
        { '<F8>', '<cmd>AerialToggle!<CR>', desc = 'Toggle symbol outline' },
    },
    opts = {
        backends = { 'treesitter', 'lsp', 'markdown', 'man' },
        layout = {
            default_direction = 'right',
            width = 32,
        },
        show_guides = true,
        filter_kind = false,
    },
}
