function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

Map('n', 'q', '<nop>')

Map('n', '<Esc>', '<cmd>nohlsearch<CR>')
Map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

Map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
Map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
Map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
Map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

Map('t', '<C-h>', '<cmd>wincmd h<CR>', { desc = 'Move focus to the left window' })
Map('t', '<C-l>', '<cmd>wincmd l<CR>', { desc = 'Move focus to the right window' })
Map('t', '<C-j>', '<cmd>wincmd j<CR>', { desc = 'Move focus to the lower window' })
Map('t', '<C-k>', '<cmd>wincmd k<CR>', { desc = 'Move focus to the upper window' })

Map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
Map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

Map('v', '<', '<gv', { desc = 'Tab selection in' })
Map('v', '>', '>gv', { desc = 'Tab selection out' })

Map('n', '<TAB>', ':bn<CR>')
Map('n', '<S-TAB>', ':bp<CR>')
Map('n', '<leader>bd', ':bd<CR>', { desc = 'Delete current buffer' })

Map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {
  desc = 'LSP Code Action',
})

Map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', { desc = 'Get definition' })
Map('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<CR>', { desc = 'Get implementation' })
Map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { desc = 'Hover' })
Map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', { desc = 'Rename symbol' })
Map('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', { desc = 'Get references' })

Map('n', 's', require('substitute').operator, { desc = 'Substitute' })
Map('n', 'ss', require('substitute').line, { desc = 'Substitute line' })
Map('n', 'S', require('substitute').eol, { desc = 'Substitute until end of line' })
Map('x', 's', require('substitute').visual, { desc = 'Substitute selected' })

Map('n', 'sx', require('substitute.exchange').operator, { desc = 'Substitute exchange' })
Map('n', 'sxx', require('substitute.exchange').line, { desc = 'Substitute exchange line' })
Map('x', 'X', require('substitute.exchange').visual, { desc = 'Substitute exchange selected' })
Map('n', 'sxc', require('substitute.exchange').cancel, { desc = 'Substitute exchange cancel' })

Map('n', '<CR>', 'm`o<Esc>``', { desc = 'Add line bellow' })
Map('n', '<BS>', 'm`O<Esc>``', { desc = 'Add line above' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- Map("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- Map("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- Map("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- Map("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
