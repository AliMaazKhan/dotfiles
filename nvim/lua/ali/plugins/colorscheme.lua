-- return {
-- 	"sainnhe/gruvbox-material",
-- 	name = "gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- config goes here
-- 		vim.g.gruvbox_material_background = "medium"
-- 		vim.g.gruvbox_material_foreground = "material"
-- 		vim.g.gruvbox_material_enable_bold = 1
-- 		vim.g.gruvbox_material_transparent_background = 1
-- 		vim.g.gruvbox_material_visual = "blue background"
-- 		vim.g.gruvbox_material_ui_contrast = "high"
-- 		vim.g.gruvbox_material_float_style = "dim"
-- 		vim.g.gruvbox_material_statusline_style = "original"
-- 		vim.cmd("colorscheme gruvbox-material")
-- 	end,
-- }

return {
	{
		"AlphaTechnolog/pywal.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("pywal").setup()
		end,
	},
}
