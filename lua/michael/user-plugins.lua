-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
	--primeagen practice game
	{ "ThePrimeagen/vim-be-good" },

	--colorschemes
	{ "lunarvim/colorschemes" },
	{ "rose-pine/neovim" },
	-- optional
	-- { "rafamadriz/neon" },
	-- { "ChristianChiarulli/nvcode-color-schemes.vim" },
	-- { "Mofiqul/vscode.nvim" },
	-- { "folke/tokyonight.nvim" },
	-- { "arcticicestudio/nord-vim" },
	-- { "mfussenegger/nvim-jdtls" },
	-- { "tomlion/vim-solidity" },
	-- { "catppuccin/nvim" },

	{ "windwp/nvim-ts-autotag" }, -- auto tags

	{ "norcalli/nvim-colorizer.lua" }, -- colorize hex colors

	{
		"jose-elias-alvarez/typescript.nvim",
		config = function()
			require("typescript").setup({})
		end,
	},
	{ "onsails/lspkind.nvim" },

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
