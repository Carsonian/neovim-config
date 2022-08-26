local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Packer to manage plugins
local use = require('packer').use
require('packer').startup(function()
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Package manager
  use 'hrsh7th/cmp-nvim-lsp'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin.
  use 'tpope/vim-fugitive' -- Git commands for nvim.
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- UI to select things (files, search results, open buffers...)
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} } -- A bar at the top containing the open buffers. (File tabs)

  -- Debugger Plugins
  use 'mfussenegger/nvim-dap' -- Debugger plugin.
  use 'rcarriga/nvim-dap-ui'
  use 'mfussenegger/nvim-dap-python'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  -- Color Schemes
  use { "ellisonleao/gruvbox.nvim" } -- Gruvbox theme (Make sure that any themes you install support treesitter)

  -- Helpful general plugins
  use {'glepnir/dashboard-nvim'} -- Dashboard
  use 'numToStr/Comment.nvim' -- Tool for commenting easily
  use 'tpope/vim-surround' -- A great tool for adding, removing and changing braces, brackets, quotes and various tags around your text.
  use 'lukas-reineke/indent-blankline.nvim'

  -- Neo tree setup (File tree)
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.38",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      }
    }

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Adds git related info in the signs columns (near the line numbers) and popups.
  use 'nvim-treesitter/nvim-treesitter' -- Highlight, edit, and navigate code using a fast incremental parsing library, also Syntax coloring.
  use 'nvim-treesitter/nvim-treesitter-textobjects' -- Additional textobjects for treesitter.
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin.

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)

luasnip = require 'luasnip' -- luasnip setup
