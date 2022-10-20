--To install plugin use `:PlugInstall`
local c = vim.call
local Plug = vim.fn['plug#']
c('plug#begin', '~/.config/nvim/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'onsails/lspkind-nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug('akinsho/bufferline.nvim', {  tag = 'v3.*' })
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-lualine/lualine.nvim'
  Plug('folke/tokyonight.nvim', { branch = 'main' })
  Plug('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})
c('plug#end')
--Colorscheme
local d = vim.cmd
d[[
  syntax enable
  colorscheme tokyonight-night
]]
--require
require('plug-setup')
require('key')
