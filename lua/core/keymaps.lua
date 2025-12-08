vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {
  desc = 'LSP Code Action',
})

vim.keymap.set('n', 's', require('substitute').operator, { noremap = true })
vim.keymap.set('n', 'ss', require('substitute').line, { noremap = true })
vim.keymap.set('n', 'S', require('substitute').eol, { noremap = true })
vim.keymap.set('x', 's', require('substitute').visual, { noremap = true })

vim.keymap.set('n', 'sx', require('substitute.exchange').operator, { noremap = true })
vim.keymap.set('n', 'sxx', require('substitute.exchange').line, { noremap = true })
vim.keymap.set('x', 'X', require('substitute.exchange').visual, { noremap = true })
vim.keymap.set('n', 'sxc', require('substitute.exchange').cancel, { noremap = true })

vim.keymap.set('n', '<CR>', 'm`o<Esc>``')
vim.keymap.set('n', '<BS>', 'm`O<Esc>``')

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
