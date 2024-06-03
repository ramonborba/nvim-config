return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = (vim.g.colors_name == 'arctic') and 'ayu_mirage' or 'auto',
            },
            sections = {
                lualine_c = { { 'filename', path = 1 } },
            },
        })
    end,
}
