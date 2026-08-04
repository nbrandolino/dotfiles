-- status line (replaces vim-airline + vim-airline-themes)
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {
        options = {
            theme = 'edge',
            globalstatus = true,
            -- powerline separators, matching the old airline_powerline_fonts=1
            section_separators = { left = '', right = '' },
            component_separators = { left = '', right = '' },
            disabled_filetypes = { statusline = { 'NvimTree', 'aerial' } },
        },
        sections = {
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { { 'filename', path = 1 } },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
        },
        extensions = { 'nvim-tree', 'aerial', 'lazy' },
    },
}
