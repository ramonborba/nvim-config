return {
    { -- You can easily change to a different colorscheme.
        -- Change the name of the colorscheme plugin below, and then
        -- change the command in the config to whatever the name of that colorscheme is.
        --
        -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
        'folke/tokyonight.nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
            -- require('tokyonight').setup {
            --   transparent = true,
            -- }
            --
            -- Load the colorscheme here.
            -- Like many other themes, this one has different styles, and you could load
            -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
            -- vim.cmd.colorscheme('tokyonight-night')

            -- You can configure highlights by doing something like:
            -- vim.cmd.hi('Comment gui=none')
        end,
    },

    {
        'rockyzhang24/arctic.nvim',
        branch = 'v2',
        dependencies = { 'rktjmp/lush.nvim' },
        priority = 1000,
        config = function()
            vim.api.nvim_create_autocmd('ColorScheme', {
                pattern = 'arctic',
                callback = function()
                    -- Import colors
                    local colors = require('ramon.utils.colors')

                    vim.api.nvim_set_hl(0, 'Comment', { fg = colors.gray2 })
                    vim.api.nvim_set_hl(0, '@lsp.type.comment', { fg = colors.gray2 })
                    vim.api.nvim_set_hl(0, '@lsp.type.parameter', { fg = colors.purple })
                    vim.api.nvim_set_hl(0, '@lsp.typemod.variable.defaultLibrary', { fg = colors.blue2 })
                    vim.api.nvim_set_hl(0, '@label', { fg = colors.light_blue })
                end,
            })
            -- vim.cmd.colorscheme('arctic')
        end,
    },

    {
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup({
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            })
        end,

        -- optionally set the colorscheme within lazy config
        init = function()
            -- vim.cmd('colorscheme poimandres')
        end,
    },

    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').setup({
                bold_keyword = false,
                reduced_blue = false,
            })
            vim.cmd('colorscheme nordic')
        end,
    },

    {
        'gbprod/nord.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nord').setup({})
            -- vim.cmd.colorscheme('nord')
        end,
    },

    {
        'comfysage/evergarden',
        opts = {
            transparent_background = false,
            contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
            overrides = {}, -- add custom overrides
        },
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require('evergarden').setup({
                transparent_background = false,
                contrast_dark = 'soft', -- 'hard'|'medium'|'soft'
                overrides = {}, -- add custom overrides
            })
            -- vim.cmd.colorscheme('evergarden')
        end,
    },
}
