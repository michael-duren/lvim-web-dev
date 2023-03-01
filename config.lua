reload("michael.core.options")
reload("michael.core.keymaps")
reload("michael.user-plugins")
reload("michael.plugin-settings.rose-pine")
reload("michael.plugin-settings.ts-autotag")
reload("michael.plugin-settings.colorizer")
reload("michael.plugin-settings.lspsaga")
reload("michael.plugin-settings.lsp")

--color scheme
lvim.colorscheme = "rose-pine"

--formatting and linting
lvim.log.level = "info"
lvim.format_on_save = {
	enabled = true,
	timeout = 5000,
}

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua" },
	{
		command = "prettier",
		extra_args = { "--print-width", "100" },
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	},
	{
		command = "csharpier",
		filetypes = { "cs" },
	},
})
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
	{
		command = "shellcheck",
		args = { "--severity", "warning" },
	},
	{
		command = "eslint",
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	},
})

-- lvim.builtin.treesitter.playground.enable = true
-- local formatters = require("lvim.lsp.null-ls.formatters")
-- formatters.setup({
-- 	{ command = "stylua" },
-- 	{
-- 		command = "prettier",
-- 		extra_args = { "--print-width", "100" },
-- 		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
-- 	},
-- 	{
-- 		command = "csharpier",
-- 		filetypes = { "cs" },
-- 	},
-- })
-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
-- 	{ command = "flake8", filetypes = { "python" } },
-- 	{
-- 		command = "shellcheck",
-- 		args = { "--severity", "warning" },
-- 	},
-- 	{
-- 		command = "eslint",
-- 		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
-- 	},
-- })

-- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "zsh",
-- 	callback = function()
-- 		-- let treesitter use bash highlight for zsh files as well
-- 		require("nvim-treesitter.highlight").attach(0, "bash")
-- 	end,
-- })

-- additional autotag config, don't know if this did anything
-- require("nvim-treesitter.configs").setup({
-- 	autotag = {
-- 		true,
-- 	},

-- 	{
-- 		"windwp/nvim-ts-autotag",
-- 		config = function()
-- 			require("nvim-ts-autotag").setup()
-- 		end,
-- 	},
-- })

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"

-- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

--- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
-- 	return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
-- 	local function buf_set_option(...)
-- 		vim.api.nvim_buf_set_option(bufnr, ...)
-- 	end
-- 	--Enable completion triggered by <c-x><c-o>
-- 	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
