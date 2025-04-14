return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'scottmckendry/cyberdream.nvim',
  priority = 998, -- Make sure to load this before all the other start plugins.

  config = function()
    require('cyberdream').setup {
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
