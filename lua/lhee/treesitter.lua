local treesitter = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
}

function treesitter.config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"go",
			"html",
			"java",
			"javascript",
			"kotlin",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"rust",
			"sql",
			"svelte",
			"toml",
			"typescript",
		},
		highlight = { enable = true },
    autopairs = { enable = true},
		indent = { enable = true },
	})
end

return treesitter
