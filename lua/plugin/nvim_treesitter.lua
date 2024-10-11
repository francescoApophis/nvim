
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"python", "javascript", "lua", "c", "markdown"},
      
      highlight = {
        enable = true,
        disable = { "vimdoc"}, -- neovim help pages highlight is broken
      },
      indent = {
        enable = true,
        disable = {"python"}
      }
    })
    
  end 
}



