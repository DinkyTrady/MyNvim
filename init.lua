"To install plugin use `:PlugInstall`
"Untuk menginstall plugin ketik `:PlugInstall`
"Setting
set termguicolors
set number
set expandtab
set tabstop=2
set shiftwidth=2
"Call plugins
call plug#begin()
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
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end
"Colorscheme
colorscheme tokyonight-night
lua <<EOF
  require('init')
  require('key')
EOF
