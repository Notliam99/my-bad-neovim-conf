return {
    'echasnovski/mini.nvim',
    version = '*',
	config = function ()
        require("mini.starter").setup()
        require('mini.comment').setup()
	end
}
