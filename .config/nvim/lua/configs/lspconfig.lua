-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "jedi-language-server" }
-- vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

-- Tell pyright to use the correct node
local node_path = "/home/jharrisa/opt/bin/node"
local pyright_langserver_path = vim.fn.stdpath("data") .. "/mason/bin/pyright-langserver"

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { node_path, pyright_langserver_path, "--stdio" },
})

