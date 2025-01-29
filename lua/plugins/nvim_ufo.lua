return {
	{
		'kevinhwang91/nvim-ufo',
		name = 'ufo',

		dependencies = {
			'kevinhwang91/promise-async',
			'neovim/nvim-lspconfig',
		},

		config = function()
			local ufo = require('ufo')
			local lspconfig = require('lspconfig')

			vim.o.foldcolumn = '1'
			vim.o.foldlevel = 99
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			vim.keymap.set('n', 'zR', ufo.openAllFolds)
			vim.keymap.set('n', 'zM', ufo.closeAllFolds)

			local  capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true
			}
			local language_servers = lspconfig.util.available_servers()
			for _,ls in ipairs(language_servers) do
				lspconfig[ls].setup({
					capabilities = capabilities
				})
			end
			ufo.setup()
		end
	}
}
