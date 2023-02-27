-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
-- splitting windows and tabs
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader>sv"] = "<C-w>v" -- split window vertically
lvim.keys.normal_mode["<leader>sh"] = "<C-w>s" -- split window horizontally
lvim.keys.normal_mode["<leader>se"] = "<C-w>=" -- make split windows equal width & height
lvim.keys.normal_mode["<leader>sx"] = ":close<CR>" -- close current split window

lvim.keys.normal_mode["<leader>to"] = ":tabnew<CR>" -- open new tab
lvim.keys.normal_mode["<leader>tx"] = ":tabclose<CR>" -- close current tab
lvim.keys.normal_mode["<leader>}"] = ":tabn<CR>" --  go to next tab
lvim.keys.normal_mode["<leader>{"] = ":tabp<CR>" --  go to previous tab

--typescript
lvim.keys.normal_mode["leader>rf"] = ":TypescriptRenameFile<CR>"
