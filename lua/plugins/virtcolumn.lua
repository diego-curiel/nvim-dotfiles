return{
	{
		"xiyaowong/virtcolumn.nvim",
		name= "virtcolumn",
		
		config = function()
			vim.g.virtcolumn_char = " |" -- char to display as line
			vim.g.virtcolumn_priority = 10 -- priority of extmark
		end
	}
}
