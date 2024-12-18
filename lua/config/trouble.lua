require("trouble").setup({
  treesitter = true,
})

vim.keymap.set('n', '<leader>a', '<cmd>Trouble diagnostics toggle<cr>')
vim.keymap.set('n', '<leader>m', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>')
vim.keymap.set('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>')
vim.keymap.set('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>')
vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>')
vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>')

