
return {
  dir = "~/plugs/trie-cmp.nvim",
  config = function()

    require('trie-cmp.config').setup({
      win_borders = 'rounded',

      highlight_group = {
        win_bg = '#223030',
        sel_bg = '#959d90',
        text_fg = '#223030',
        bold = true,
      }
    })

    require('trie-cmp').start()
  end,
  lazy = false
}

    
    -- local Keymaps = require('trie-cmp.keymaps') -- if you need to remap 
    -- require('trie-cmp.config').setup({
      -- mappings = { -- remember that you can't pass only 1 mapping, pass all of them and edit the ones you want to
        -- ['a'] = Keymaps.scroll_down,
        -- ['s'] = Keymaps.scroll_up,
        -- ['x'] = Keymaps.insert,
      -- },

      -- win_borders = 'rounded',

      -- highlight_group = {
        -- win_bg = '#223030',
        -- sel_bg = '#959d90',
        -- text_fg = '#223030',
        -- bold = true,
      -- }
    -- })
    -- require('trie-cmp').start()
  -- end,
  -- lazy = false
-- }


