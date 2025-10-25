return {
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
	{
		"lmantw/themify.nvim",

		lazy = false,
		priority = 999,

		config = function()
			require("themify").setup({
				-- Your list of colorschemes.
				{
					"sainnhe/gruvbox-material",
					branch = "master",
					before = function()
						-- The function run before the colorscheme is loaded.
						vim.g.gruvbox_material_background = "dark"
						vim.g.gruvbox_material_foreground = "material"
						vim.g.gruvbox_material_enable_bold = 1
						vim.g.gruvbox_material_transparent_background = 1
						vim.g.gruvbox_material_visual = "blue background"
						vim.g.gruvbox_material_ui_contrast = "high"
						vim.g.gruvbox_material_float_style = "dim"
						vim.g.gruvbox_material_statusline_style = "dark"
					end,
				},
				"catppuccin/nvim",
				"projekt0n/github-nvim-theme",
				"joshdick/onedark.vim",
				"folke/tokyonight.nvim",
				"Yazeed1s/minimal.nvim",
				"AlphaTechnolog/pywal.nvim",
				{ "mhartington/oceanic-next", branch = "main" },
				{ "Shatur/neovim-ayu", branch = "main" },
				{
					"sho-87/kanagawa-paper.nvim",
					branch = "master",
				},
				-- Built-in colorschemes are also supported.
				-- (Also works with any colorschemes that are installed via other plugin manager, just make sure the colorscheme is loaded before Themify is loaded.)
				"default",
			})
		end,
	},
}

-- I don't like pywal themes that much
-- return {
-- 	{
-- 		"AlphaTechnolog/pywal.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("pywal").setup()
-- 		end,
-- 	},
-- }
