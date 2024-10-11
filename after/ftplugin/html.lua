

local function get_file_ext(event)
  return string.match(event.match, "%a+$")
end 

-- HTML Boilerplate on buf entering
local html_file_group = vim.api.nvim_create_augroup("html_file_group", {clear = true})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function(event)
    if get_file_ext(event) ~= "html" then return end 

    local buf_lines = vim.api.nvim_buf_get_lines(0, 0, -1, true)
    if #buf_lines == 1 and buf_lines[1] == "" then 
      vim.cmd("read ~/Desktop/HTML_boilerplate.txt")
      vim.cmd("write")
    end 
  end,
  group = html_file_group
})
