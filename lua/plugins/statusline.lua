return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'catppuccin',
      },
      sections = {
        lualine_c = { {
          'filename',
          file_status = true,
          path = 1,
        } },
      },
      inactive_sections = {
        lualine_c = { {
          'filename',
          file_status = true,
          path = 1,
        } },
      },
    },
  },
}
