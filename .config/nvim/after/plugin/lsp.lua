local lsp = require'lsp-zero'
local mason = require'mason'
local mason_lsp = require'mason-lspconfig'

lsp.preset'recommended'
lsp.set_preferences{
	sign_icons = {}
}

lsp.on_attach(function(client, buffnr)
	local opts = {buffer = buffnr, remap = false}

	vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
	vim.keymap.set('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
	vim.keymap.set('n', '<leader>i', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
end)

lsp.setup()

mason.setup({})
mason_lsp.setup({
	ensure_installed = {'lua_ls', 'rust_analyzer', 'clangd', 'vls', 'nil_ls'},
	handlers = {
		lsp.default_setup,
	},
})
