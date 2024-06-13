vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", vim.cmd.Ex)
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>t', ":lua require'utils'.test()<cr>")
vim.keymap.set('n', '<leader>r', ":lua require'utils'.run()<cr>")
vim.keymap.set('n', '<leader>a', ":lua require'utils'.associated()<cr>")

