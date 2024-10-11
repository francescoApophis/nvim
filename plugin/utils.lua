-- vimgrep
vim.api.nvim_create_user_command('VG', function(args)
  local pattern = args.fargs[1]:gsub('%"', '', 1)
  local where = args.fargs[2]:gsub('%"$', '', 1)
  vim.cmd(string.format('nmap n :cnext<Enter>|vimgrep %s %s', pattern, where))
end, {})
