-- Dap configuration for python
local dap = require('dap')

local dap = require('dap')
    dap.adapters.python = {
      type = 'executable';
      command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
      args = { '-m', 'debugpy.adapter' };
    }

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = 'Launch file';
    program = '${file}';
    pythonPath = function()
      return '/usr/bin/python';
    end;
  },
}

-- Keybindings for Dap (Python debugger)
vim.api.nvim_set_keymap( "n", "<F4>", ":lua require('dapui').toggle()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F9>", ":lua require('dap').continue()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<F1>", ":lua require('dap').step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<F2>", ":lua require('dap').step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<F3>", ":lua require('dap').step_out()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>dsc", ":lua require('dap').continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>dsv", ":lua require('dap').step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>dsi", ":lua require('dap').step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>dso", ":lua require('dap').step_out()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>dro", ":lua require('dap').repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap( "n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<Leader>di", ":lua require('dapui').toggle()<CR>", { noremap = true, silent = true })