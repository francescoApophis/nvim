local palettes = {
  duskfox = { 
    fg0 = "#997dff"
  }
}

-- for specs fields: https://github.com/EdenEast/nightfox.nvim/blob/main/lua/nightfox/spec.lua
local specs = {
  duskfox = {
    syntax = {
     variable = 'fg0',
    }
  }
}


local function my_config()
  require("nightfox").setup({
    options = {
      transparent = true,

      styles = {
        comments = "italic",
        conditionals = "italic",
        functions = "bold,italic",
        keywords = "italic",
        variables = "NONE",
        identifiers = "italic",
        types = "italic,bold",
      },
    },

    palettes = palettes,
    specs = specs,
  })
  vim.cmd('colorscheme duskfox')
end 

return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
  config = my_config,
}



