local lsp = require'lsp-zero'
local mason = require'mason'
local mason_lsp = require'mason-lspconfig'

lsp.preset'recommended'
lsp.set_preferences{
	sign_icons = {}
}
lsp.setup()

mason.setup({})
mason_lsp.setup({
	ensure_installed = {'pyright', 'lua_ls', 'rust_analyzer'},
	handlers = {
		lsp.default_setup,
	},
})
