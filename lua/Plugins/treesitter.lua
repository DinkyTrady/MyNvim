--nvim-treesitter-setup↴
require'nvim-treesitter.configs'.setup{
  ensure_installed = { 'lua', 'javascript', 'html', 'css' },
  sync_install = true,
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autotag = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false
  }
}
require('nvim-ts-autotag').setup()
require'treesitter-context'.setup{}
