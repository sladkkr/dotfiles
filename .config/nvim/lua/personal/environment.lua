vim.cmd'colo kanagawa'
vim.cmd'hi! Normal guibg=NONE ctermbg=NONE'
vim.cmd'hi! LineNr guibg=NONE ctermbg=NONE'
vim.cmd'hi! StatusLine guibg=NONE ctermbg=NONE'
vim.cmd'hi! SignColumn guibg=NONE ctermbg=NONE'
vim.cmd'set clipboard+=unnamedplus'
vim.wo.number = true
vim.wo.relativenumber = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.api.nvim_create_autocmd('VimEnter', { command = 'lcd %:p:h'})
vim.g.netrw_banner = 0
