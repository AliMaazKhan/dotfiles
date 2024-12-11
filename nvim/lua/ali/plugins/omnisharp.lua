return {
	{
		"OmniSharp/omnisharp-vim",
		ft = { "cs" }, -- Load for C# files
		config = function()
			-- Add any specific OmniSharp Vim configurations here
			vim.g.OmniSharp_server_use_mono = 1 -- Example: Enable Mono if needed
			vim.g.OmniSharp_server_path = "/home/alimaaz/.bin/omnisharp/OmniSharp.exe"
			vim.g.OmniSharp_highlighting = 1
			vim.g.OmniSharp_popup_position = "peek"
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gd",
				":OmniSharpGotoDefinition<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap("n", "<leader>rf", ":OmniSharpRename<CR>", { noremap = true, silent = true })
		end,
	},
	-- Other plugins here...
}
