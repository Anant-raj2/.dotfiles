return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
     vim.keymap.set('n', '<leader>bb',
                   function() builtin.buffers({
                    sort_mru=true,
                    ignore_current_buffer=true
                   }) end)
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
