-- Setup lspconfig.
local mason = require("mason-lspconfig")
mason.setup({
  ensure_installed = { 'sumneko_lua', 'html', 'cssls', 'tsserver', 'emmet_ls' },
  automatic_installation = false
})

local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()

for _,lsp in ipairs(mason.get_installed_servers()) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end
nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true
        }
      },
    },
  },
}
nvim_lsp.clangd.setup {
  capabilities = capabilities
}


local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
