return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here

		vim.keymap.set("n", "<leader>wk", "<cmd>WhichKey<cr>", { desc = "Substitute with motion" }),
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
