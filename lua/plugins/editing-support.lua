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
