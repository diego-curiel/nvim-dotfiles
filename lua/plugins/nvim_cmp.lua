return {
	{
		'hrsh7th/nvim-cmp',
		name= 'nvim-cmp',

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer", 
		},

		config = function()
			local cmp = require('cmp')

			cmp.setup({
				sources = {
					{name = 'nvim_lsp'},
					{name = 'buffer'},
				},
				snippet = {
					expand = function(args)
						-- You need Neovim v0.10 to use vim.snippet
						vim.snippet.expand(args.body)
					end,
				},
				completion = {
					autocomplete = false,
				},
				mapping = cmp.mapping.preset.insert({
					-- Confirm autocompletion with enter
					['<CR>'] = cmp.mapping.confirm({select=false}),
					['<Tab>'] = cmp.mapping.complete(),
				}),
				window = {
					documentation = cmp.config.window.bordered(),
					completion = cmp.config.window.bordered(),
				},
			})
		end
	}
}
