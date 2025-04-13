return {
  'lukas-reineke/virt-column.nvim',
  config = function()
    require('virt-column').setup {
      -- Correct way for multiple columns
      virtcolumn = '80,100,120', -- Comma-separated string

      -- Optional: Different characters for each column
      char = { '│', '┆', '┊' }, -- Table is acceptable here

      -- Optional: Different highlights for each column
      highlight = { 'WarningMsg', 'ErrorMsg', 'Comment' }, -- Table is acceptable here
    }
  end,
}
