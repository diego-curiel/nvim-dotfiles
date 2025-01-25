require("config.colorscheme")
--require("config.harpoon")
require("config.keymaps")
require("config.lazy")
--require("config.telescope")
--require("config.treesitter")
--require("config.undotree")
--require("config.fugitive")

vim.opt.mouse = ""
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.spell = false
vim.opt.signcolumn = "auto"
vim.opt.wrap = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cc = "80"

function ForceVirtColumnHl()
	vim.api.nvim_set_hl(0, "VirtColumn",
						{sp = "#e8e8e8", bg = none, force = true})
end
-- Set Color Scheme Settings
ColorMyPencils()

-- Set VirtColumn Color
ForceVirtColumnHl()


