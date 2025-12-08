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
    config = function(_, opts)
      require('snacks').setup(opts)
      vim.api.nvim_create_autocmd('TermOpen', {
        callback = function()
          vim.keymap.set('t', '<Esc>', [[<Esc><C-\><C-n>]], {
            buffer = true,
            noremap = true,
            silent = true,
          })
        end,
      })
    end,
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
