return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.config")

        config.setup({
            ensure_installed = {
                "rust",
                "lua",
                "python",
                "html",
                "typescript",
                "javascript",
                "bash"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true
        })
    end
}
