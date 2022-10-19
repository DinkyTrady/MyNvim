--for easy
local o = vim.opt
local opts = { noremap = true }
local maps = { noremap = true, silent = true }
--seting
o.termguicolors=true
o.number=true
o.expandtab=true
o.shiftwidht=2
o.tabstop=2
o.relativenumber=true
--mappings
maps('n', '<C-n>' ":NvimTreeToggle<CR>", opts)
