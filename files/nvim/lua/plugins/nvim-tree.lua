return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = { 'NvimTreeToggle', 'NvimTreeFocus', 'NvimTreeFindFile' },
    keys = {
        { '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file explorer' },
        { '<leader>f', '<cmd>NvimTreeFindFile<CR>', desc = 'Find current file in explorer' },
    },
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.api.nvim_create_autocmd('VimEnter', {
            group = vim.api.nvim_create_augroup('nvim_tree_autoopen', { clear = true }),
            callback = function(args)
                if vim.fn.argc() > 0 or args.file ~= '' or vim.bo[args.buf].filetype ~= '' then
                    return
                end
                require('nvim-tree.api').tree.open()
                vim.cmd.wincmd('p')
            end,
        })
    end,
    opts = {
        hijack_cursor = true,
        sync_root_with_cwd = true,
        view = { width = 32 },
        renderer = {
            group_empty = true,
            indent_markers = { enable = true },
        },
        filters = { dotfiles = false },
        git = { enable = true },
        diagnostics = { enable = true },
        update_focused_file = { enable = true },
        actions = {
            open_file = { window_picker = { enable = false } },
        },
    },
}
