local mason = {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"nvim-lua/plenary.nvim",
	},
}

function mason.config()
	local servers = {
		"bashls", -- Bash
		"clangd", -- C/C++
		"cssls", -- CSS
		"gopls", -- Go
		"html", -- HTML
		"jdtls", -- Java
		"tsserver", -- JavaScript/TypeScript
		"kotlin_language_server", -- Kotlin
		"lua_ls", -- Lua
		"marksman", -- Markdown
		"pyright", -- Python
		"rust_analyzer", -- Rust
		"sqls", -- SQL
		"svelte", -- Svelte
		"taplo", -- TOML
		"tailwindcss", -- Tailwind CSS
	}

	require("mason").setup({
		ui = {
			border = "rounded",
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = servers,
	})
end

return mason
