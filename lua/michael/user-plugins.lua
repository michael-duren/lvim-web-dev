lvim.plugins = {
	-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
	--primeagen practice game
	{ "ThePrimeagen/vim-be-good" },

	--colorschemes
	{ "lunarvim/colorschemes" },
	{ "rose-pine/neovim" },

	-- conflicting with other plugins
	-- { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation

	--	auto tags
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	-- tailwind-colors
	{
		"themaxmarchuk/tailwindcss-colors.nvim",
		-- load only on require("tailwindcss-colors")
		-- run the setup function after plugin is loaded
		config = function()
			-- pass config options here (or nothing to use defaults)
			require("tailwindcss-colors").setup()
		end,
	},

	{ "norcalli/nvim-colorizer.lua" }, -- colorize hex colors

	{ "xiyaowong/nvim-transparent" }, -- toggle transparency

	{ "szw/vim-maximizer" }, -- maximizes and restores current window

	{ "mrjones2014/nvim-ts-rainbow" },

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
	-- { "Hoffs/omnisharp-extended-lsp.nvim" },

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
