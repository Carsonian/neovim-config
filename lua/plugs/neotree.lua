-- Setup Neotree
-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- Keybindings for Neotree plugin
-- Toggle tree
vim.api.nvim_set_keymap('n', '<leader>tt', ':Neotree toggle reveal action=show <cr>', { noremap = true, silent = true})
-- Focus on tree
vim.api.nvim_set_keymap('n', '<leader>tf', ':Neotree action=focus <cr>', { noremap = true, silent = true})
