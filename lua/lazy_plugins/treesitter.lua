return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
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
