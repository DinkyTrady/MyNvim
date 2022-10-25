local ls = require'luasnip'
vim.opt.runtimepath = vim.opt.runtimepath + '~/.config/nvim/plugins/snippets'
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").lazy_load()

local ls = require("luasnip")
local parse = ls.parser.parse_snippet
local types = require("luasnip.util.types")

ls.config.setup({
    history = true,

    updateevents = "TextChanged,TextChangedI",

    enable_autosnippets = true,

    ext_base_prio = 300,

    ext_prio_increase = 2,

    ship_env = {
        types = require("luasnip.util.types"),
        parse = parse,
    },
})
