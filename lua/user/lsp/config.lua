
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['clangd'].setup {
	capabilities = capabilities
}


require('lspconfig')['pyright'].setup {
	capabilities = capabilities
}


require('lspconfig')['cmake'].setup {
	capabilities = capabilities
}

-- lua language server installation guide:
-- 1. first downloads the binary folder: https://github.com/sumneko/lua-language-server/releases
-- 2. create a bash script file named 'lua-language-server', with following content:
-- #!/bin/bash
-- script_dir=$(cd $(dirname $0);pwd)
-- exec "${script_dir}/bin/lua-language-server" "$@"
-- 3. add the script file as binary to PATH variable
require 'lspconfig'.sumneko_lua.setup {
	capabilities = capabilities
}

