return {
  'scottmckendry/cyberdream.nvim',
  priority = 998, -- Make sure to load this before all the other start plugins.

  config = function()
    require('cyberdream').setup {
      variant = 'auto',
      styles = {
        transparent = true,
        italic_comments = true,
        terminal_colors = true,
      },
    }

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'cyberdream'
  end,
}
