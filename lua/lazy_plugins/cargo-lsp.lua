return {
    'saecki/crates.nvim',
    config = function()
        -- require("crates.completion.cmp").setup()
        require('crates').setup {
            -- completion = {
            --     cmp = {
            --         enabled = true
            --     }
            -- },
            lsp = {
                enabled = true,
                on_attach = function(client, bufnr)
                    -- the same on_attach function as for your other lsp's
                end,
                actions = true,
                completion = true,
                hover = true,
            },
        }
    end,
}
