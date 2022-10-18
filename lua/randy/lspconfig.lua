-- Setup lspconfig.
local nvim_lsp = require('lspconfig')
local server = { 'tsserver', 'html', 'cssls', 'emmet_ls' }
local capabilities = require('cmp_nvim_lsp').update_capabiliti
es(vim.lsp.protocol.make_client_capabilities())

for _,lsp in ipairs(server) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end
