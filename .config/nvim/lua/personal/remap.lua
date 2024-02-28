vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>pt', ":lua require'utils'.test()<cr>")
vim.keymap.set('n', '<leader>pr', ":lua require'utils'.run()<cr>")
vim.keymap.set('n', '<leader>pa', ":lua require'utils'.associated()<cr>")

