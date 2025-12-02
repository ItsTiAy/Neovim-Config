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
      image = {
        enabled = true,
      },
      dashboard = {
        enabled = true,
      },
      notifier = {
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
  },
  {
    'gbprod/substitute.nvim',
    opts = {},
  },
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
  },
}
