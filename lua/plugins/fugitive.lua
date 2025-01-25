-- Vim-Fugitive Plugin
return{{
	'tpope/vim-fugitive',
	name = "fugitive",

	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
	end
}}
