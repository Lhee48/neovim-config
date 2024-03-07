local colorscheme = {
	-- Tokyonight colorscheme
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
}

function colorscheme.config()
	vim.cmd.colorscheme("tokyonight-night")
end

return colorscheme
