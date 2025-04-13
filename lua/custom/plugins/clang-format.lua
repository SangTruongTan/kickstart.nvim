return {
  {
    'rhysd/vim-clang-format',
    ft = { 'c', 'cpp', 'objc', 'objcpp' },
    config = function()
      -- Correct way to set vim script variables in Lua
      vim.g['clang_format#auto_format'] = 1
      vim.g['clang_format#auto_formatexpr'] = 1

      -- Style options configuration
      -- vim.g['clang_format#style_options'] = {
      --   BasedOnStyle = 'Google',
      --   IndentWidth = 4,
      --   TabWidth = 4,
      --   UseTab = 'Never',
      --   ColumnLimit = 80,
      --   PointerAlignment = 'Left',
      -- }

      -- Key mappings
      vim.keymap.set('n', '<leader>cf', '<cmd>ClangFormat<cr>', { desc = 'Format file with clang-format' })
      vim.keymap.set('v', '<leader>cf', '<cmd>ClangFormat<cr>', { desc = 'Format selection with clang-format' })
    end,
  },
}
