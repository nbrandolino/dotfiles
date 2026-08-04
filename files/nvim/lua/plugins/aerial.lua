-- symbol outline (replaces tagbar, keeps the <F8> binding)
-- backed by treesitter, so it no longer needs an external ctags binary
return {
    'stevearc/aerial.nvim',
    -- master requires neovim 0.12+ despite what its README says; use the 0.11 branch
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
