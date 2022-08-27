-- KEYBINDINGS
-- Plugin specific keybindings are in the plugin's config files.

-- Remap space as leader key. Leader key is a special key that will allow us to make some additional keybindings. Currently set to: Spacebar
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remap for dealing with word wrap. In general, the `nvim_set_keymap` is the function we can use to create any keymap you'd wish. 
-- I tend to keep those related to the whole editor here, while leaving the ones for specific plugins to their own configuration files. 
-- That way if I ever remove or change plugins I can keep my keybindings clean.
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Make a cd command to set working directory to the directory of the current file
vim.api.nvim_set_keymap('n', '<leader>cd', "<cmd>:cd %:p:h<cr>:pwd<CR>", { noremap = true, silent = true})

-- Leader ce: Start editing init.lua file
vim.api.nvim_set_keymap('n', '<leader>ce', '<cmd>:e  ~/AppData/Local/nvim/init.lua<CR>', { noremap = true, silent = true})

-- Leader sl: Reload init.lua file
vim.api.nvim_set_keymap('n', '<leader>sl', ':luafile %<CR>', { noremap = true, silent = true})

