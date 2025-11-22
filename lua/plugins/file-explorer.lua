return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<2-LeftMouse>'] = 'open_with_window_picker',
          ['<cr>'] = 'open_with_window_picker',
          ['S'] = 'split_with_window_picker',
          ['s'] = 'vsplit_with_window_picker',
        },
      },
    },
  },
}
