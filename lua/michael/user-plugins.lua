-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
	--primeagen practice game
	{ "ThePrimeagen/vim-be-good" },

	--colorschemes
	{ "lunarvim/colorschemes" },
	{ "rose-pine/neovim" },

	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation

	{ "windwp/nvim-ts-autotag" }, -- auto tags

	{ "norcalli/nvim-colorizer.lua" }, -- colorize hex colors

	{ "xiyaowong/nvim-transparent" }, -- toggle transparency

	{ "szw/vim-maximizer" }, -- maximizes and restores current window

	{
		"jose-elias-alvarez/typescript.nvim",
		config = function()
			require("typescript").setup({
				-- keybinds for navigation in lspsaga window
				scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
				-- use enter to open file with definition preview
				definition = {
					edit = "<CR>",
				},
				ui = {
					colors = {
						normal_bg = "#022746",
					},
				},
			})
		end,
	},
	{ "onsails/lspkind.nvim" },

	--lsp sage
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
}
