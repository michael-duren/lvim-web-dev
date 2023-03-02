local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

lspconfig["emmet_ls"].setup({
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

lspconfig["csharp_ls"].setup({
	filetypes = { "cs" },
})

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
