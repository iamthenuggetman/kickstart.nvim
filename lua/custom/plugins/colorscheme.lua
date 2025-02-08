return {
  'navarasu/onedark.nvim',
  priority = 100,
  lazy = false,
  config = function()
    require('onedark').setup {
      style = 'darker',
      transparent = true,
      term_colors = true,
    }
    require('onedark').load()

    -- Configure highlights
    vim.cmd [[highlight Comment gui=none]]
  end,
}
