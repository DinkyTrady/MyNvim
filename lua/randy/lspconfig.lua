-- Setup lspconfig.
local nvim_lsp = require('lspconfig')
local server = { 'tsserver', 'html', 'cssls', 'emmet_ls', 'clangd' }
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

for _,lsp in ipairs(server) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
