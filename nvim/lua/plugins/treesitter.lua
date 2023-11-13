return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,

	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"json",
				"html",
				"css",
				"markdown",
				"gitignore",
				"dockerfile",
				"lua",
				"bash",
				"graphql",
				"svelte",
				"yaml",
			},
			auto_install = true,
		})
	end,
}
