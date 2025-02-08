return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>fe', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  init = function()
    -- Properly disable netrw before anything else runs
    vim.api.nvim_set_var('loaded_netrw', 1)
    vim.api.nvim_set_var('loaded_netrwPlugin', 1)
  end,
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_default', -- netrw disabled, opening a directory opens neo-tree
      window = {
        mappings = {
          ['<leader>fe'] = 'close_window',
        },
      },
    },
  },
}
