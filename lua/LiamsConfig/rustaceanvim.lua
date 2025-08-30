vim.g.rustaceanvim = {
    -- Plugin configuration
    tools = {
    },
    -- LSP configuration
    server = {
        on_attach = function(client, bufnr)
            -- you can also put keymaps in here
            vim.keymap.set(
                "n",
                "<leader>m",
                function()
                    vim.cmd.RustLsp('openDocs')
                end
            )

            vim.keymap.set(
                "n",
                "<leader>e",
                function()
                    vim.cmd.RustLsp('explainError')
                end
            )
        end,
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
            },
        },
    },
    -- DAP configuration
    dap = {
    },
}
local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
    "n",
    "<leader>a",
    function()
        vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
        -- or vim.lsp.buf.codeAction() if you don't want grouping.
    end,
    { silent = true, buffer = bufnr }
)
vim.keymap.set(
    "n",
    "K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
    function()
        vim.cmd.RustLsp({ 'hover', 'actions' })
    end,
    { silent = true, buffer = bufnr }
)
