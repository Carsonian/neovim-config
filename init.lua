-- GENERAL SETTINGS
-- Dependencies
require("plugins")
require("keybindings")
require("lsp")
require("plugs.treesitter")
require('dbg')
require("plugs.cmp")
require("plugs.telescope")
require("plugs.gitsigns")
require("plugs.dashboard")
require("plugs.neotree")
-- require("indent_blankline").setup()

-- Vim Settings...

-- Set Font
vim.opt.guifont = { "Cascadia Code Nerd Font Complete", "h12" }

-- Set highlight on search. This will remove the highlight after searching for text.
vim.o.hlsearch = false

vim.wo.number = true

-- Enable mouse mode.
vim.o.mouse = 'a'

-- Enable break indent.
vim.o.breakindent = true

-- Save undo history.
vim.opt.undofile = true

-- Case insensitive searching unless /C or capital in search.
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time.
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme defaults 
vim.o.termguicolors = true
vim.g.onedark_terminal_italics = 2
vim.o.background = 'dark'
require('gruvbox').setup({ contrast = 'hard'})
vim.cmd [[colorscheme gruvbox]]

-- Set status bar settings.
require('lualine').setup({ options = { theme = 'codedark' }})

-- Highlight on yank (copy).
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)
