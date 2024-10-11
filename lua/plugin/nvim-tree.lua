return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    vim.cmd([[hi NvimTreeNormal guibg=None ctermbg=None]])
    require("nvim-tree").setup({
      view = {
        width = 20,
      },

      filters = {
        dotfiles = false, -- hide dotfiles
      },

      update_cwd = true,
    })
  end 
}
