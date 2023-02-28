-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
	--colorschemes
	{ "lunarvim/colorschemes" },
	{ "rafamadriz/neon" },
	{ "ChristianChiarulli/nvcode-color-schemes.vim" },
	{ "Mofiqul/vscode.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "arcticicestudio/nord-vim" },
	{ "mfussenegger/nvim-jdtls" },
	{ "tomlion/vim-solidity" },
	{ "catppuccin/nvim" },
	{ "rose-pine/neovim" },

	{ "windwp/nvim-ts-autotag" },

	--lsp sage for TS
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
}
