-- edge theme
return {
    'sainnhe/edge',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.edge_style = 'default'
        vim.g.edge_transparent_background = 1
        vim.g.edge_better_performance = 1
        vim.g.edge_enable_italic = 1
        vim.g.edge_show_eob = 0
        vim.g.edge_diagnostic_virtual_text = 'colored'
        vim.cmd.colorscheme('edge')
    end,
}
