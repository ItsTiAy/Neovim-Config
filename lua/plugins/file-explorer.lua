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

local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '<BS>', api.tree.change_root_to_parent, opts 'Up')
  vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '\\', ':NvimTreeToggle<CR>', desc = 'Nvim-Tree Toggle', silent = true },
    { '<Esc>', ':NvimTreeClose<CR>', desc = 'Nvim-Tree Close', silent = true },
  },
  opts = {
    on_attach = my_on_attach,
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
    update_focused_file = {
      enable = true,
      update_root = {
        enable = true,
      },
    },
    filters = {
      git_ignored = false,
    },
    hijack_cursor = true,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
  },
}
