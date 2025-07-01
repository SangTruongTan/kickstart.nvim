-- Add to your Lazy plugin spec or init.lua
return {
  'neovim/nvim-lspconfig',
  init = function()
    -- Default indentation for all files
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true

    -- Force settings for C/C++ files
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'c', 'cpp' },
      callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = true
        vim.bo.softtabstop = 4
        vim.bo.cindent = true
        vim.bo.cinoptions = ':0,l1,t0,g0,(0'
      end,
    })

    -- Force tabs (no expandtab) for Makefiles
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'make' },
      callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = false -- Use hard tabs
        vim.bo.softtabstop = 0 -- Disable soft tabs
      end,
    })
  end,
}
