require("ali.core")
require("ali.lazy")

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.g.neovide_scale_factor = 0.95
	vim.g.neovide_text_gamma = 0.0
	vim.g.neovide_text_contrast = 0.5

	vim.g.neovide_transparency = 0.9
	vim.g.transparency = 0.9

	vim.g.neovide_window_blurred = true
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_refresh_rate = 59
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_confirm_quit = true
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.o.guifont = "JetbrainsMono Nerd Font:h14" -- text below applies for VimScript
end
