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
lvim.keys.normal_mode["leader>rf"] = ":TypescriptRenameFile<CR>"

-- remove which key for "l"
lvim.builtin.which_key.mappings["l"] = {}
