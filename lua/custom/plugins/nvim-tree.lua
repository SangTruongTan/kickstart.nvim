-- //custom/plugins/nvim-tree.lua
-- nvim-tree
-- https://github.com/nvim-tree/nvim-tree.lua
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
  end,
}
