return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',
                -- component_separators = { left = '|', right = '|' },
                -- section_separators = { left = '█', right = '█' },
                component_separators = { left = '|', right = '|' },
                section_separators = { left = '', right = '' },
                -- component_separators = { left = '', right = '' },
                -- section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_b = { 'branch', 'diagnostics' },
                lualine_c = { { 'filename', path = 1 } },
            },
        })
    end,
}
