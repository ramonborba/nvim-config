return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require('harpoon')

        harpoon:setup()

        -- Add file to harpoon list
        vim.keymap.set('n', '<leader>a', function()
            harpoon:list():add()
        end, { desc = '[A]dd file to harpoon list' })

        -- Open harpoon quick menu
        vim.keymap.set('n', '<C-e>', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        -- Navigate to file in list
        vim.keymap.set('n', '<C-h>', function()
            harpoon:list():select(1)
        end)
        vim.keymap.set('n', '<C-j>', function()
            harpoon:list():select(2)
        end)
        vim.keymap.set('n', '<C-k>', function()
            harpoon:list():select(3)
        end)
        vim.keymap.set('n', '<C-l>', function()
            harpoon:list():select(4)
        end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set('n', '<C-M-P>', function()
            harpoon:list():prev()
        end)
        vim.keymap.set('n', '<C-M-N>', function()
            harpoon:list():next()
        end)
    end,
}
