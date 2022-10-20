require('randy.cmp')
require('randy.lsp')
require('set.nvim-tree')
require('set.line')
require('set.cs')
require('set.key')
--indent-blankline
let l = vim.opt.list
l = true
lchars:append "eol:↴"

require("indent_blankline").setup {
    show_end_of_line = true,
}
--snipr
require("luasnip.loaders.from_vscode").lazy_load()
--autocomments
require('Comment').setup()
--nvim-tree-setup↴
require'nvim-treesitter.configs'.setup{highlight={enable=true}}
