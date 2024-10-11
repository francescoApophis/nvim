  
local opts = {noremap = true, silent = true} -- silent: mode, does not print command if tru 

-- Normal mode
vim.keymap.set({"v", "i", "s"}, "ù", "<Esc>", opts) -- set normal mode 
vim.keymap.set({"v", "i", "s"}, "Ù", "<Esc>", opts) -- set normal mode in Caps lock

local nav_keys_modes = {"n", "v"} -- can't add 't' because then you cannot write
vim.keymap.set(nav_keys_modes, "j", "h",opts)
vim.keymap.set(nav_keys_modes, "k", "j",opts)
vim.keymap.set(nav_keys_modes, "l", "k",opts)
vim.keymap.set(nav_keys_modes, "ò", "l",opts)

-- File tree: NvimTree, currently disabled
vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<Enter>", opts)
vim.keymap.set("n", "<leader>g", ":NvimTreeFocus<Enter>", opts)
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<Enter>", opts)

-- File tree with netrw 
-- local is_ex_on = true 
-- vim.keymap.set("n", "<leader>f", 
  -- function() 
    -- if is_ex_on then vim.cmd("Ex")
    -- else vim.cmd("Rex")
    -- end 
    -- is_ex_on = not is_ex_on
  -- end,
-- opts)

-- Terminal
local term_height = 20
vim.keymap.set("n", "<leader>nt", ":vs|ter<Enter>", opts) -- Create new vertical terminal
vim.keymap.set("n", "<leader>nh", string.format(":sp|ter<Enter>:res %d <Enter>", term_height), opts) -- Create new horizontal terminal
vim.keymap.set("t", "<leader>kt", "<C-\\><C-n>:bd!<Enter>", opts) -- Kill terminal
vim.keymap.set("t", "<C-n>", "<leader><c-\\><c-n><enter>", opts) -- switch to normal mode

-- Editing
vim.keymap.set("v", "<C-l>", ":m-2<Enter>gv", opts) -- move line/s up 
vim.keymap.set("v", "<C-k>", ":m+1<Enter>gv", opts) -- move line/s  
vim.keymap.set("v", "ç", ">><Esc>vgv", opts) -- indent line/s ('gv' at the end: select previous selection) 
vim.keymap.set("v", "J", "<<<Esc>vgv", opts) -- unindent line/s  

local double_chars = {
  ["'"]  = "'",
  ["\""] = "\"",
  ["{" ] = "}",
  ["(" ] = ")",
  ["[" ] = "]"
}

for k, v in pairs(double_chars) do 
  vim.keymap.set("i", k, k .. v .. "<Left>", opts)
end 



-- Buffers 
vim.keymap.set("n", "2", ":bnext<Enter>" , opts) -- switch to next 
vim.keymap.set("n", "1", ":bp<Enter>" , opts) -- switch to previous 

-- Tab switching
vim.keymap.set("n", "'", "<C-w>w", opts)

-- Messages
vim.keymap.set("n", "<leader>m", ":--messages<Enter>", opts)
