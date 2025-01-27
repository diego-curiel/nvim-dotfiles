require("config.colorscheme") -- Load colorscheme settings
require("config.keymaps") -- Load personalized keymaps
require("config.lazy") -- Lazy plugin loader

-- Disable mouse interaction
vim.opt.mouse = ""
-- Set number bar type to relative
vim.opt.relativenumber = true
-- Set number bar
vim.opt.number = true
-- Disable spelling check
vim.opt.spell = false
-- Disable word wrapping
vim.opt.wrap = false
-- Automatic indentation size
vim.opt.shiftwidth = 4
-- Indentation size
vim.opt.tabstop = 4
-- VirtColumn position
vim.opt.cc = "80"
-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

-- This just a small fix, won't last long
function ForceVirtColumnHl()
	vim.api.nvim_set_hl(0, "VirtColumn",
						{sp = "#e8e8e8", bg = none, force = true})
end
-- Set Color Scheme Settings
ColorMyPencils()

-- Set VirtColumn Color
ForceVirtColumnHl()


