-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"

-- write(save) with control S
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

--buffers mapped to behave like vs code
lvim.keys.normal_mode["<C-w>"] = ":bd<CR>" -- close current split window
lvim.keys.normal_mode["<C-]>"] = ":bn<CR>" -- close current split window
lvim.keys.normal_mode["<C-[>"] = ":bp<CR>" -- close current split window

-- splitting windows
lvim.keys.normal_mode["<leader>sv"] = "<C-w>v" -- split window vertically
lvim.keys.normal_mode["<leader>s-"] = "<C-w>s" -- split window horizontally
lvim.keys.normal_mode["<leader>se"] = "<C-w>=" -- make split windows equal width & height
lvim.keys.normal_mode["<leader>sx"] = ":close<CR>" -- close current split window

-- scroll horizontally
lvim.keys.normal_mode["<A-l>"] = { "zl" }
lvim.keys.normal_mode["<A-h>"] = { "zh" }

--keep curson in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Plugin

-- remap to lsp-saga
lvim.lsp.buffer_mappings.normal_mode["K"] = { ":Lspsaga peek_definition<CR>" } -- peek def
lvim.lsp.buffer_mappings.normal_mode["gd"] = { ":Lspsaga goto_definition<CR>" } -- go to def

-- lspsaga maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rn"] = { ":Lspsaga rename<CR>" } -- rename symbol
lvim.lsp.buffer_mappings.normal_mode["<leader>gf"] = { ":Lspsaga lsp_finder<CR>" } -- go (peek)(detailed) to finder window
lvim.lsp.buffer_mappings.normal_mode["<leader>ca"] = { ":Lspsaga code_action<CR>" } -- see actions
lvim.lsp.buffer_mappings.normal_mode["<leader>D"] = { ":Lspsaga show_line_diagnostics<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["<leader>d"] = { ":Lspsaga show_cursor_diagnostics<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["[d"] = { ":Lspsaga diagnostic_jump_prev<CR>" } -- show  diagnostics for line
lvim.lsp.buffer_mappings.normal_mode["]d"] = { ":Lspsaga diagnostic_jump_next<CR>" } -- show  diagnostics for line

-- typescript maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rf"] = { ":TypescriptRenameFile<CR>" } -- rename ts files and imports
lvim.lsp.buffer_mappings.normal_mode["<leader>oi"] = { "TypescriptOrganizeImports<CR>" } -- organize imports
lvim.lsp.buffer_mappings.normal_mode["<leader>ru"] = { ":TypescriptRemoveUnused<CR>" }
