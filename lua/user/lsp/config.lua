-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- for clangd to correctly recognize header files, typically a compilation database is needed for clangd to read info,
-- such as 'compile_commands.json', which can be generated by:
-- cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
require("lspconfig")["clangd"].setup({
	capabilities = capabilities,
})

require("lspconfig")["pyright"].setup({
	capabilities = capabilities,
})

require("lspconfig")["cmake"].setup({
	capabilities = capabilities,
})
