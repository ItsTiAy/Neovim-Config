return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'windwp/nvim-ts-autotag',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      aliases = {
        ['cf'] = 'html',
      },
    },
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      dashboard = {
        enabled = true,
      },
      indent = {
        enabled = true,
      },
      styles = {
        terminal = {
          keys = {
            term_normal = {
              '<esc>',
              function()
                vim.cmd 'stopinsert'
                return '<esc>'
              end,
              mode = 't',
              expr = true,
              desc = 'Escape to normal mode',
            },
          },
        },
      },
    },
    keys = {
      {
        ';',
        function()
          Snacks.terminal()
        end,
        desc = 'Toggle Terminal',
      },
    },
  },
  {
    'gbprod/substitute.nvim',
    opts = {},
  },
  --[[ 
  {
    'tpope/vim-surround',
  },
  {
    'andymass/vim-matchup',
    event = 'VimEnter',
    opts = {
      treesitter = {
        enable = true,
      },
    },
  }, ]]
}
