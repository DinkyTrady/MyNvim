--options
local o = vim.opt
o.softtabstop = 2
o.tabstop = 2
o.encoding = "utf-8"
o.expandtab = true
o.shiftwidth = 0
o.number = true
o.termguicolors = true
o.cursorline = true
--mappings
--change <leader> to 'space'. Please do not make mappings with <leader> in insert mode
vim.g.mapleader = " "
vim.g.maplocalheader = " "
--set mapping
--open nvim-tree with 'space + n'
map('n', '<leader>n', 'NvimTreeToggle<CR>')
--For save click 'space + w', save and quit click 'wq', quit neovim click 'space + q', to force quit click 'fq' in normal mode
map('n', '<leader>n', ':w<CR>')
map('n', 'wq', ':wq<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', 'fq', ':q!<CR>')
--to reset neovim click 'space + s'
map('n', '<leader>s', ':so<CR>')
