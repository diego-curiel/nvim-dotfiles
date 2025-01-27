return {
	{
		'williamboman/mason-lspconfig.nvim',
		name = 'mason-lspconfig',

		dependencies = {
			'williamboman/mason.nvim',
			'neovim/nvim-lspconfig',
		},

		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { -- lsp list
					'pyright',
					'jsonnet_ls',
					'quick_lint_js',
					'clangd',
					'ts_ls',
				},
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({})
					end,
				},
			})
		end,
	}
}
