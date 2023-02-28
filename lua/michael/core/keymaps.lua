-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"

-- write(save) with control S
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- splitting windows
lvim.keys.normal_mode["<leader>sv"] = "<C-w>v" -- split window vertically
lvim.keys.normal_mode["<leader>s-"] = "<C-w>s" -- split window horizontally
lvim.keys.normal_mode["<leader>se"] = "<C-w>=" -- make split windows equal width & height
lvim.keys.normal_mode["<leader>sx"] = ":close<CR>" -- close current split window

-- splitting tabs
lvim.keys.normal_mode["<leader>to"] = ":tabnew<CR>" -- open new tab
lvim.keys.normal_mode["<leader>tx"] = ":tabclose<CR>" -- close current tab
lvim.keys.normal_mode["<leader>}"] = ":tabn<CR>" --  go to next tab
lvim.keys.normal_mode["<leader>{"] = ":tabp<CR>" --  go to previous tab

--keep curson in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--typescript rename symbol

-- remap to lsp-saga
lvim.lsp.buffer_mappings.normal_mode["K"] = { ":Lspsaga peek_definition<CR>" } -- peek def
lvim.lsp.buffer_mappings.normal_mode["gd"] = { ":Lspsaga goto_definition<CR>" } -- go to def

-- lspsaga maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rn"] = { ":Lspsaga rename<CR>" }
lvim.lsp.buffer_mappings.normal_mode["<leader>gf"] = { ":Lspsaga lsp_finder<CR>" } -- go (peek)(detailed) to finder window
lvim.lsp.buffer_mappings.normal_mode["<leader>ca"] = { ":Lspsaga code_action<CR>" }

-- typescript maps
lvim.lsp.buffer_mappings.normal_mode["<leader>rf"] = { ":TypescriptRenameFile<CR>" }
lvim.lsp.buffer_mappings.normal_mode["<leader>oi"] = { "TypescriptOrganizeImports<CR>" }
lvim.lsp.buffer_mappings.normal_mode["<leader>ru"] = { ":TypescriptRemoveUnused<CR>" }
