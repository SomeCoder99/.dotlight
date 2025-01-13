-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
---@type {[string]: table}
local servers = {
  html = {},
  cssls = {},
  ccls = {
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "arduino" },
  },
  -- clangd = {
  --   filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "arduino" },
  --   cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
  --   init_options = {
  --     fallbackFlags = { '-std=c++17' },
  --   },
  -- },
  intelephense = {},
  kotlin_language_server = {},
  rust_analyzer = {},
  ts_ls = {},
  somesass_ls = {},
  arduino_language_server = {},
}
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for name, conf in pairs(servers) do
  lspconfig[name].setup(vim.tbl_extend("keep", conf or {}, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }))
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
