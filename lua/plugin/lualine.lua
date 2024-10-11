

local function get_curr_time()
  local time = os.date("*t")
  local hour = time['hour']
  local min  = time['min']
  local sec  = time['sec']

  hour = (hour < 10 and "0" .. hour) or tostring(hour)
  min = (min < 10 and "0" .. min) or tostring(min)
  sec = (sec < 10 and "0" .. sec ) or tostring(sec)
  
  return hour .. ":" .. min .. ":" .. sec
end


local start_time = os.time() -- TODO: make it capital
local min = 0
local sec = 0

local function stopwatch()
  local now = os.time()
  local tot_sec = now - start_time -- I could make the secs, min in get_curr_Time global and those directly, should reduce the amount of work

  if tot_sec % 60 == 0 then 
    min = tot_sec / 60
    sec = tot_sec - min * 60
  else
    sec = tot_sec % 60
  end

  return tostring(min .. ':' .. (sec < 10 and 0 .. sec or sec))
end



local t_min_to_end = 1 -- minutes
local t_sec_to_end = t_min_to_end * 60 
local t_min = 0
local t_sec = 0
local finished = false

-- TODO: for some reason, pressing <leader>f (open nvim-tree)
-- right at nvim startup, fucks up the displayed timer 

local function timer()
  local now = os.time()
  local tot_sec_from_start = now - start_time 
  local tot_sec_left = t_sec_to_end - tot_sec_from_start

  if tot_sec_left < 0 then
    finished = true
  end

  if not finished then
    if tot_sec_left % 60 == 0 then 
      t_min = tot_sec_left / 60
      t_sec = tot_sec_left - t_min * 60 
    else
      t_sec = tot_sec_left % 60
      if t_sec % 59 == 0 then
        t_min = t_min - 1
      end
    end
  end

  return (t_min < 10 and 0 .. t_min or t_min) .. ':' .. (t_sec < 10 and 0 .. t_sec or t_sec)
end


local config = function()
  local theme = require("lualine.themes.duskfox")
  theme.normal.c.gb = nil

  require("lualine").setup {
    options = {
      globalstatus = true,
      theme = theme  
    },
    
    sections = {
      lualine_a = {"mode"},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {"buffers"},
      lualine_x = {"encoding", "fileformat", "filetype", get_curr_time},
    },
  }
end

return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    config = config,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
