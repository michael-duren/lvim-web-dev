-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"

-- to behave like mac os
lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- s for save
lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- q for quit
lvim.keys.normal_mode["<C-w>"] = ":bd<CR>" -- w for close buffer (window)

-- don't copy replaced text to register aftre paste
vim.keymap.set("x", "<leader>P", [["_dP]])

-- splitting windows
lvim.keys.normal_mode["<leader>sv"] = "<C-w>v" -- split window vertically
lvim.keys.normal_mode["<leader>s-"] = "<C-w>s" -- split window horizontally
lvim.keys.normal_mode["<leader>se"] = "<C-w>=" -- make split windows equal width & height
lvim.keys.normal_mode["<leader>sx"] = ":close<CR>" -- close current split window
lvim.keys.normal_mode["<leader>sm"] = ":MaximizerToggle<CR>" -- toggle split window maximization

-- scroll horizontally
lvim.keys.normal_mode["<A-l>"] = { "zl" }
lvim.keys.normal_mode["<A-h>"] = { "zh" }

--keep curson in the middle of the screen while jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--set remaps for incrementing and decrementing numbers
lvim.keys.normal_mode["<A-a>"] = { "<C-a>" }

-- restart LSP
vim.keymap.set("n", "<C-e>", ":LspRestart<CR>")

-- Plugin

-- remap to lsp-saga
lvim.lsp.buffer_mappings.normal_mode["K"] = { ":Lspsaga peek_definition<CR>" } -- peek def
lvim.lsp.buffer_mappings.normal_mode["<leader>Gd"] = { ":Lspsaga goto_definition<CR>" } -- go to def

-- lspsaga maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rn"] = { ":Lspsaga rename<CR>" } -- rename symbol
lvim.lsp.buffer_mappings.normal_mode["<leader>Gf"] = { ":Lspsaga lsp_finder<CR>" } -- go (peek)(detailed) to finder window
lvim.lsp.buffer_mappings.normal_mode["<leader>ca"] = { ":Lspsaga code_action<CR>" } -- see actions
lvim.lsp.buffer_mappings.normal_mode["<leader>D"] = { ":Lspsaga show_line_diagnostics<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["<leader>d"] = { ":Lspsaga show_cursor_diagnostics<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["[d"] = { ":Lspsaga diagnostic_jump_prev<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["]d"] = { ":Lspsaga diagnostic_jump_next<CR>" } -- show  diagnostics for line

-- typescript maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rf"] = { ":TypescriptRenameFile<CR>" } -- rename ts files and imports
lvim.lsp.buffer_mappings.normal_mode["<leader>oi"] = { "TypescriptOrganizeImports<CR>" } -- organize imports
lvim.lsp.buffer_mappings.normal_mode["<leader>ru"] = { ":TypescriptRemoveUnused<CR>" }

-- transparent
vim.keymap.set("n", "Tt", ":TransparentToggle<CR>")
