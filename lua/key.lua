--variable
local o = vim.opt
local g = vim.g
--options & nonactive default neovim
o.softtabstop = 2
o.tabstop = 2
o.encoding = "utf-8"
o.expandtab = true
o.shiftwidth = 0
o.number = true
o.termguicolors = true
o.cursorline = true
--nonactivated
local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}
for _, plugin in pairs(default_plugins) do
  g["loaded_" .. plugin] = 1
end
--mappings
--change <leader> to 'space'. Please do not make mappings with <leader> in insert mode
vim.g.mapleader = " "
vim.g.maplocalheader = " "
--set mapping
local map = vim.keymap.set
--open nvim-tree with 'space + n'
map('n', '<leader>n', ':NvimTreeToggle<CR>')
--For save click 'space + z', save and quit click 'wq', quit neovim click 'space + q', to force quit click 'fq' in normal mode
map('n', '<leader>z', ':w<CR>')
map('n', 'wq', ':wq<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', 'fq', ':q!<CR>')
--to reset neovim click 'space + s'
map('n', '<leader>s', ':so<CR>')
