local function open_win_config_func()
  local scr_w = vim.opt.columns:get()
  local scr_h = vim.opt.lines:get()
  local tree_w = 80
  local tree_h = math.floor(100 * scr_h / scr_w)
  return {
    border = 'rounded',
    relative = 'editor',
    width = tree_w,
    height = tree_h,
    col = (scr_w - tree_w) / 2,
    row = (scr_h - tree_h) / 2,
  }
end

return {
  --[[
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
    close_if_last_window = true,
    filesystem = {
      use_libuv_file_watcher = true,
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
    default_component_configs = {
      git_status = {
        symbols = {
          added = '',
          modified = '',
          removed = '',
          renamed = '',
          untracked = '',
          ignored = '',
          unstaged = '',
          staged = '',
          conflict = '󰞇',
        },
      },
    },
  },
  ]]
  'nvim-tree/nvim-tree.lua',
  keys = {
    { '\\', ':NvimTreeToggle<CR>', desc = 'Nvim-Tree Toggle', silent = true },
  },
  opts = {
    view = {
      signcolumn = 'yes',
      float = {
        enable = true,
        open_win_config = open_win_config_func,
      },
      cursorline = false,
    },
    modified = {
      enable = true,
    },
    renderer = {
      indent_width = 3,
      icons = {
        show = {
          hidden = true,
        },
        git_placement = 'after',
        bookmarks_placement = 'after',
        symlink_arrow = ' -> ',
        glyphs = {
          folder = {
            arrow_closed = ' ',
            arrow_open = ' ',
            default = '',
            open = '',
            empty = '',
            empty_open = '',
            symlink = '',
            symlink_open = '',
          },
          default = '󱓻',
          symlink = '󱓻',
          bookmark = '',
          modified = '',
          hidden = '󱙝',
          git = {
            unstaged = '×',
            staged = '',
            unmerged = '󰧾',
            untracked = '',
            renamed = '',
            deleted = '',
            ignored = '∅',
          },
        },
      },
    },
    filters = {
      git_ignored = false,
    },
    hijack_cursor = true,
    sync_root_with_cwd = true,
  },
}
