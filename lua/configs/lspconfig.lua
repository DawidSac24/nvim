require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "jedi_language_server"}
vim.lsp.enable(servers)

