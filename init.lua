--install use `:PlugInstall`
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
  --LSP / language server protocol
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  --CMP
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'onsails/lspkind-nvim'
  --Make your experience better
  Plug 'numToStr/Comment.nvim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug('iamcco/markdown-preview.nvim', { ['do']= 'cd app && yarn install' })
  --ui
  Plug('akinsho/bufferline.nvim', {  tag = 'v3.*' })
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-lualine/lualine.nvim'
  --Syntax highlighting
  Plug('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})
  --colorscheme
  Plug('folke/tokyonight.nvim', { branch = 'main' })
vim.call('plug#end')
--require
require('plug-setup')
require('key')
