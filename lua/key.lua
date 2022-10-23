---------variable
local o = vim.opt
local g = vim.g

---------Options

o.softtabstop = 2
o.tabstop = 2
o.encoding = "utf-8"
o.expandtab = true
o.shiftwidth = 2
o.number = true
o.relativenumber = false
o.termguicolors = true
o.cursorline = true
o.laststatus = 3
o.showmode = false
o.title = true
o.clipboard = "unnamedplus"
o.smartindent = true
o.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"
o.numberwidth = 2
o.ruler = false
o.shortmess:append "sI"
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.updatetime = 250
o.whichwrap:append "<>[]hl"

--Disable defaults neovim plugins
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

---------mappings

--change <leader> to 'space'. Please do not make mappings with <leader> in insert mode
g.mapleader = " "
g.maplocalheader = " "

--set mapping
local map = vim.keymap.set

--open nvim-tree with 'space + t'
map('n', '<leader>t', ':NvimTreeToggle<CR>')

--For save click 'space + w', save and quit click 'wq', quit neovim click 'space + q', to force quit click 'fq' in normal mode
map('n', '<leader>w', ':w<CR>')
map('n', 'wq', ':wq<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', 'fq', ':q!<CR>')

--to reset neovim click 'space + s'
map('n', '<leader>s', ':so<CR>')

---------To another tab

--Bufferlines
map('n', '<C-l>', ':BufferLineCycleNext<CR>')
map('n', '<C-h>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>p', ':BufferLinePick<CR>')
map('n', '<leader>y', ':BufferLinePickClose<CR>')
