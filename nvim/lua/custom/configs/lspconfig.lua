local vim = vim
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
vim.diagnostic.open_float()

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "rust_analyzer", "pylsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.pylsp.setup {
--   settings = {
--     pylsp = {
--       configurationSources = { 'flake8' },
--       plugins = {
--         flake8 = {
--           enabled = false,
--           ignore = { 'E501', 'E231' },
--           maxLineLength = 88,
--         },
--         black = {enabled = true},
--         autopep8 = { enabled = false },
--         mccabe = {enabled = false},
--         pycodestyle = {
--           enabled = false,
--           ignore = { 'E501', 'E231' },
--           maxLineLength = 88,
--         },
--         pyflakes = {enabled = false},
--       },
--     }
--   }
-- }
