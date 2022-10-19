"if auto install doesn't work, please install manually
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"To install plugin use `:PlugInstall`
"Untuk menginstall plugin ketik `:PlugInstall`
set encoding=utf8
set cursorline
set noshowmode
set laststatus=2
set wildmenu
"space tabs↴
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
"search↴
set incsearch
set hlsearch
set ignorecase
set smartcase
set number
set termguicolors
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
call plug#end()
"Colorscheme
colorscheme tokyonight-night
lua require('init')
nnoremap <C-n> :NvimTreeToggle<CR>
