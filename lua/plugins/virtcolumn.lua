return{
	{
		"xiyaowong/virtcolumn.nvim",
		name= "virtcolumn",
		
		config = function()
			vim.g.virtcolumn_char = " |" -- char to display as line
			vim.g.virtcolumn_priority = 10 -- priority of extmark
			vim.api.nvim_set_hl(0, "VirtColumn",
								{sp = "#e8e8e8", bg = none})
		end
	}
}
